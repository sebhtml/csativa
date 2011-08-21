##!/bin/bash

# the name of the job
#$ -N k31-csativa-20110821

# the name of the project (not necessary)
#$ -P project-csativa

# the maximum allowed running time
#$ -l h_rt=48:00:00

# the number of MPI ranks to utilise
# each MPI rank will be mapped onto a logical core
# 512/16 = 32 nodes
#$ -pe default 512

# help to schedule the large job
#$ -R y

# use the current directory
#$ -cwd

# set email address for notification
#$ -M joe@dev.null

# email to be sent when the job starts and ends
#$ -m beas

# load required modules (probably needs to be changed on Amazon)
module load compilers/gcc/4.4.2 mpi/openmpi/1.4.3_gcc

# the actual Ray command

mpiexec -n 512 /home/sboisvert/Ray \
-k 31 \
-o k31-csativa-20110821 \
-p Medicinalgenomics.com_Prep7_1-1_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-1_2_sequence.txt.fastq \
-p Medicinalgenomics.com_Prep7_1-2_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-2_2_sequence.txt.fastq \
-p Medicinalgenomics.com_Prep7_1-3_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-3_2_sequence.txt.fastq \
-p Medicinalgenomics.com_Prep7_1-6_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-6_2_sequence.txt.fastq \
-p Medicinalgenomics.com_Prep7_1-7_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-7_2_sequence.txt.fastq \
-p Medicinalgenomics.com_Prep7_1-8_1_sequence.txt.fastq \
   Medicinalgenomics.com_Prep7_1-8_2_sequence.txt.fastq \
-p Medicinalgenomics_Prep7_1-5_1_sequence.txt.fastq \
   Medicinalgenomics_Prep7_1-5_2_sequence.txt.fastq
