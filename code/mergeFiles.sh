#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=0-01:00:00
#SBATCH --mem=16GB
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=karissa.barthelson@adelaide.edu.au

##Params
mkdir /hpcfs/users/a1211024/q96-v-naglu7dpf/temp
FASTDATA1=/hpcfs/users/a1211024/q96-v-naglu7dpf/V350030606
TEMP=/hpcfs/users/a1211024/q96-v-naglu7dpf/temp
FASTOUT=/hpcfs/users/a1211024/q96-v-naglu7dpf/fastq

## Concatenating the F reads 
for R1 in ${FASTDATA1}/*_1_R1_001.fastq.gz
  do

# Define the other lanes
  R2=${R1%_1_R1_001.fastq.gz}_2_R1_001.fastq.gz
  R3=${R1%_1_R1_001.fastq.gz}_3_R1_001.fastq.gz
  R4=${R1%_1_R1_001.fastq.gz}_4_R1_001.fastq.gz
  CATNAME=$(basename ${R1%_1_R1_001.fastq.gz})
  echo -e "cat will merge:\t${R1}\n\t${R2}\n\t${R3}\n\t${R4}"
  echo -e "New file name will be:\t${TEMP}/${CATNAME}_merged_R1_001.fastq.gz"
  cat ${R1} ${R2} ${R3} ${R4} > ${TEMP}/${CATNAME}_merged_R1_001.fastq.gz

  done


## Concatenating the R reads 
for R1 in ${FASTDATA1}/*_1_R2_001.fastq.gz
  do

# Define the other lanes
  R2=${R1%_1_R2_001.fastq.gz}_2_R2_001.fastq.gz
  R3=${R1%_1_R2_001.fastq.gz}_3_R2_001.fastq.gz
  R4=${R1%_1_R2_001.fastq.gz}_4_R2_001.fastq.gz
  CATNAME=$(basename ${R1%_1_R2_001.fastq.gz})
  echo -e "cat will merge:\t${R1}\n\t${R2}\n\t${R3}\n\t${R4}"
  echo -e "New file name will be:\t${TEMP}/${CATNAME}_merged_R2_001.fastq.gz"
  cat ${R1} ${R2} ${R3} ${R4} > ${TEMP}/${CATNAME}_merged_R2_001.fastq.gz

  done


# ## Move the merged files from temp -  fastq
mkdir 01_rawdata
mkdir 01_rawdata/fastq

mv ${TEMP}/*fastq.gz 01_rawdata/fastq

# remove the temp files/dirs
rm ${TEMP}/*.*
rmdir ${TEMP}
