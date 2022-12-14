#!/usr/bin/env Rscript
# Copyright (c) 2010-2015 Illumina, Inc.
# All rights reserved.
#
# This file is distributed under the simplified BSD license.
# The full text can be found here (and in LICENSE.txt in the root folder of
# this distribution):
#
# https://github.com/Illumina/licenses/blob/master/Simplified-BSD-License.txt
#
# Plot hap.py ROCs and PASS points
#
# This script requires the ggplot2 package.
# To install it, run this command in R:
#
#   install.packages(c("ggplot2"))
#
# Usage:
#
# This script runs on a set of hap.py results. Result n will have been run
# with hap.py -o prefix_n. The names for each result are optional, they can
# be used to specify a custom label for the ROCs in the plot.
#
# run Rscript rocplot.Rscript [-pr] output_name prefix_1:name_1 ... prefix_n:name_n
#
# Use the -pr switch to produce a precision-recall curve rather than a TPR/FPR curve
#
# Author:
#
# Peter Krusche <pkrusche@illumina.com>
#


library(ggplot2)
library(tools)


args = commandArgs(trailingOnly=TRUE)

if(length(args) < 2) {
    stop("Usage: rocplot.Rscript output_name prefix_1:name_1 ... ")
}
if("-pr" %in% args) {
    args = args[args != "-pr"]
    pr = TRUE
} else {
    pr = FALSE
}

# Read single hap.py / xcmp dataset
read_single = function(x) {
    nx = strsplit(x, "\\:")[[1]]

    if(length(nx) == 1) {
        name = basename(file_path_sans_ext(x))
    } else {
        x = nx[1]
        name = nx[2]
    }
    cat(sprintf("Reading %s as %s\n", x, name))

    all_results = list()

    all_results$roc_data_snp_all = read.csv(paste(x, "roc.Locations.SNP", "csv", "gz", sep="."))
    all_results$roc_data_indel_all = read.csv(paste(x, "roc.Locations.INDEL", "csv", "gz", sep="."))

    all_results$roc_data_snp_pass = read.csv(paste(x, "roc.Locations.SNP.PASS", "csv", "gz", sep="."))
    all_results$roc_data_indel_pass = read.csv(paste(x, "roc.Locations.INDEL.PASS", "csv", "gz", sep="."))

    sel_snp_file = paste(x, "roc.Locations.SNP.SEL", "csv", "gz", sep=".")

    # if we have a selectively-filtered ROC, don't show "PASS" ROC
    if(file.exists(sel_snp_file)) {
        all_results$roc_data_snp_sel = read.csv(sel_snp_file)
    } else {
        all_results$roc_data_snp_sel = all_results$roc_data_snp_pass
    }

    all_results$roc_data_snp_all = head(subset(all_results$roc_data_snp_all,
                                               QQ == min(all_results$roc_data_snp_all["QQ"])),                                      n=1)
    all_results$roc_data_snp_pass = head(subset(all_results$roc_data_snp_pass,
                                                QQ == min(all_results$roc_data_snp_pass["QQ"])),
                                         n=1)
    sel_min = head(subset(all_results$roc_data_snp_sel,
                          QQ == min(all_results$roc_data_snp_sel["QQ"])),
                          n=1)

    all_results$roc_connector_snp =
        rbind(all_results$roc_data_snp_all, sel_min)
    all_results$roc_connector_snp$Filter = "CONN"
    all_results$roc_data_snp_sel$Filter = "ROC"

    sel_indel_file = paste(x, "roc.Locations.INDEL.SEL", "csv", "gz", sep=".")
    if(file.exists(sel_indel_file)) {
        all_results$roc_data_indel_sel = read.csv(sel_indel_file)
    } else {
        # use PASS ROC if no SEL ROC present
 all_results$roc_data_indel_sel = all_results$roc_data_indel_pass
   }

    # just keep single ALL and PASS point
    all_results$roc_data_indel_all = head(subset(all_results$roc_data_indel_all,
                                                QQ == min(all_results$roc_data_indel_all["QQ"])),
                                         n=1)
   all_results$roc_data_indel_pass = head(subset(all_results$roc_data_indel_pass,
                                                QQ == min(all_results$roc_data_indel_pass["QQ"])),
                                          n=1)

   sel_min = head(subset(all_results$roc_data_indel_sel,
                         QQ == min(all_results$roc_data_indel_sel["QQ"])),
                         n=1)

    all_results$roc_connector_indel =
        rbind(all_results$roc_data_indel_all, sel_min)
    all_results$roc_connector_indel$Filter = "CONN"
    all_results$roc_data_indel_sel$Filter = "ROC"

    result = do.call(rbind, all_results)
row.names(result) = NULL
    result$filename = x
    result$name = name
    result$igroup = paste(result$name,
                          result$Filter,
                          result$Type)
    return(result)
}

# Plot P/R curves
plot_data = function(pdata, is.PR=FALSE) {
    # precision / recall curve
    if(is.PR) {
        xaxis = "METRIC.Recall"
        yaxis = "METRIC.Precision"
    } else {
        # approximate ROC-style curve (FPR is not correct)
        xaxis = "FPR"
        yaxis = "TPR"
        pdata$FPR = pdata$QUERY.FP / (pdata$QUERY.TOTAL - pdata$QUERY.UNK)
        pdata$TPR = pdata$TRUTH.TP / (pdata$TRUTH.TP + pdata$TRUTH.FN)
        cc = complete.cases(pdata[, c(xaxis, yaxis)])
        pdata = pdata[cc, ]
    }

    plt = ggplot(pdata, aes_string(x=xaxis, y=yaxis, color="name"))
        facet_wrap(~Type)

    # ROC lines
    plt = plt +
        geom_line(data = subset(pdata, Filter == "ROC"),
                  mapping=aes(group=igroup),
                  size=1.5,
                  linetype=3)

    # Connector between ALL and start of ROC
    plt = plt +
        geom_line(data = subset(pdata, Filter == "CONN"),
                  mapping=aes(group=igroup),
                  size=1.5,
                  linetype=4)
                  
    plt = plt +
       geom_point(data = subset(pdata, Filter %in% c("CONN")),
                   mapping=aes(group=igroup),
                   size=8)

    plt = plt +
       geom_point(data = subset(pdata, Filter %in% c("PASS","ALL")),
                  mapping=aes(shape=Filter, group=igroup),
                   size=8)

    xl_min = max(0,
                 min(subset(pdata, Filter %in% c("PASS", "ALL"))[[xaxis]]) - 0.001)
    xl_max = min(1.0,
                 max(subset(pdata, Filter %in% c("PASS", "ALL"))[[xaxis]]) + 0.001)
    yl_min = max(0,
                 min(subset(pdata, Filter %in% c("PASS", "ALL"))[[yaxis]]) - 0.0003)
    yl_max = min(1.0,
                 max(subset(pdata, Filter %in% c("PASS", "ALL"))[[yaxis]]) + 0.0003)

    plt = plt +
        scale_color_brewer("", palette="Set1") +

        xlim(c(xl_min, xl_max)) +
        ylim(c(yl_min, yl_max)) +
        xlab("Recall")+
        ylab("Precision")+
        theme_bw(base_size=18)

    return(plt)
}

data = do.call(rbind, lapply(args[2:length(args)], read_single))

pdata = subset(data, Type=="SNP")
ggsave(paste(args[1], "SNP", "png", sep="."),
       plot_data(pdata, is.PR=pr), width=8, height=)

pdata = subset(data, Type=="INDEL")
ggsave(paste(args[1], "INDEL", "png", sep="."),
       plot_data(pdata, is.PR=pr), width=8, height=)
