#!/bin/bash

workdir=
SampleID=

fileA=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_fileA.txt
fileB=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_fileB.txt
file0=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file0.txt
file30=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file30.txt
file50=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file50.txt
file100=/work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file100.txt

GJB2_Exon_fileA=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_fileA.txt
GJB2_Exon_fileB=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_fileB.txt
GJB2_Exon_file0=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_file0.txt
GJB2_Exon_file30=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_file30.txt
GJB2_Exon_file50=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_file50.txt
GJB2_Exon_file100=/work1/u1272905/test_code/hsMetrics/GJB2_Exon_file100.txt

GJB2_Whole_fileA=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_fileA.txt
GJB2_Whole_fileB=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_fileB.txt
GJB2_Whole_file0=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_file0.txt
GJB2_Whole_file30=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_file30.txt
GJB2_Whole_file50=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_file50.txt
GJB2_Whole_file100=/work1/u1272905/test_code/hsMetrics/GJB2_Whole_file100.txt

SLC26A4_Exon_fileA=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_fileA.txt
SLC26A4_Exon_fileB=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_fileB.txt
SLC26A4_Exon_file0=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file0.txt
SLC26A4_Exon_file30=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file30.txt
SLC26A4_Exon_file50=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file50.txt
SLC26A4_Exon_file100=/work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file100.txt

SLC26A4_Whole_fileA=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_fileA.txt
SLC26A4_Whole_fileB=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_fileB.txt
SLC26A4_Whole_file0=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file0.txt
SLC26A4_Whole_file30=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file30.txt
SLC26A4_Whole_file50=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file50.txt
SLC26A4_Whole_file100=/work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file100.txt

MYO15A_Exon_fileA=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_fileA.txt
MYO15A_Exon_fileB=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_fileB.txt
MYO15A_Exon_file0=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file0.txt
MYO15A_Exon_file30=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file30.txt
MYO15A_Exon_file50=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file50.txt
MYO15A_Exon_file100=/work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file100.txt

MYO15A_Whole_fileA=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_fileA.txt
MYO15A_Whole_fileB=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_fileB.txt
MYO15A_Whole_file0=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file0.txt
MYO15A_Whole_file30=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file30.txt
MYO15A_Whole_file50=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file50.txt
MYO15A_Whole_file100=/work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file100.txt

OTOF_Exon_fileA=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_fileA.txt
OTOF_Exon_fileB=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_fileB.txt
OTOF_Exon_file0=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_file0.txt
OTOF_Exon_file30=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_file30.txt
OTOF_Exon_file50=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_file50.txt
OTOF_Exon_file100=/work1/u1272905/test_code/hsMetrics/OTOF_Exon_file100.txt

OTOF_Whole_fileA=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_fileA.txt
OTOF_Whole_fileB=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_fileB.txt
OTOF_Whole_file0=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_file0.txt
OTOF_Whole_file30=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_file30.txt
OTOF_Whole_file50=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_file50.txt
OTOF_Whole_file100=/work1/u1272905/test_code/hsMetrics/OTOF_Whole_file100.txt

while read -r id;
	do
	cd ${workdir}/${id} &&
	sed 's/[[:space:]]\+/,/g' ${id}.213genes_Exon_noChrM_hs_metrics.txt > ${id}.hs_metrics.csv &&
	sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_fileA.txt &&
	sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/213genes_Exon_noChrM_file100.txt &&
	
	sed 's/[[:space:]]\+/,/g' ${id}.GJB2_Exon_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/GJB2_Exon_file100.txt &&
	
	sed 's/[[:space:]]\+/,/g' ${id}.GJB2_Whole_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/GJB2_Whole_file100.txt &&
	
	sed 's/[[:space:]]\+/,/g' ${id}.SLC26A4_Exon_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Exon_file100.txt &&

	sed 's/[[:space:]]\+/,/g' ${id}.SLC26A4_Whole_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/SLC26A4_Whole_file100.txt &&

	sed 's/[[:space:]]\+/,/g' ${id}.MYO15A_Exon_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/MYO15A_Exon_file100.txt &&

	sed 's/[[:space:]]\+/,/g' ${id}.MYO15A_Whole_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/MYO15A_Whole_file100.txt &&
	
	sed 's/[[:space:]]\+/,/g' ${id}.OTOF_Exon_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/OTOF_Exon_file100.txt &&

        sed 's/[[:space:]]\+/,/g' ${id}.OTOF_Whole_hs_metrics.txt > ${id}.hs_metrics.csv &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 23 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_fileA.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 24 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_fileB.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 29 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_file0.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 40 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_file30.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 42 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_file50.txt &&
        sed -n "8 p" ${id}.hs_metrics.csv| cut -d , -f 43 > /work1/u1272905/test_code/hsMetrics/OTOF_Whole_file100.txt &&

	paste -d , $fileA $fileB $file0 $file30 $file50 $file100 $GJB2_Exon_fileA $GJB2_Exon_fileB $GJB2_Exon_file0 $GJB2_Exon_file30 $GJB2_Exon_file50 $GJB2_Exon_file100 $GJB2_Whole_fileA $GJB2_Whole_fileB $GJB2_Whole_file0 $GJB2_Whole_file30 $GJB2_Whole_file50 $GJB2_Whole_file100 $SLC26A4_Exon_fileA $SLC26A4_Exon_fileB $SLC26A4_Exon_file0 $SLC26A4_Exon_file30 $SLC26A4_Exon_file50 $SLC26A4_Exon_file100 $SLC26A4_Whole_fileA $SLC26A4_Whole_fileB $SLC26A4_Whole_file0 $SLC26A4_Whole_file30 $SLC26A4_Whole_file50 $SLC26A4_Whole_file100  $MYO15A_Exon_fileA $MYO15A_Exon_fileB $MYO15A_Exon_file0 $MYO15A_Exon_file30 $MYO15A_Exon_file50 $MYO15A_Exon_file100 $MYO15A_Whole_fileA $MYO15A_Whole_fileB $MYO15A_Whole_file0 $MYO15A_Whole_file30 $MYO15A_Whole_file50 $MYO15A_Whole_file100 $OTOF_Exon_fileA $OTOF_Exon_fileB $OTOF_Exon_file0 $OTOF_Exon_file30 $OTOF_Exon_file50 $OTOF_Exon_file100 $OTOF_Whole_fileA $OTOF_Whole_fileB $OTOF_Whole_file0 $OTOF_Whole_file30 $OTOF_Whole_file50 $OTOF_Whole_file100 >> /work

	done < ${SampleID}
