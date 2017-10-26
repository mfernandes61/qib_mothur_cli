#!/bin/bash
# script to pull mouse data for Mothur tutorial from Zenodo
# and horse gut metagenome tutorial data from cgiar.org
cd /home
# mkdir /data /reference
mkdir mouse mouse/data mouse/reference horse
cd /home/mouse/data
wget https://zenodo.org/record/165147/files/input_data.zip 
unzip *.zip
rm *.zip
cd /home/mouse/reference
wget https://zenodo.org/record/165147/files/reference_data.zip 
unzip *.zip
rm *.zip
cd /home/horse
wget http://hpc.ilri.cgiar.org/beca/training/AdvancedBFX2015/metagenomics/data.zip
wget http://www.mothur.org/w/images/9/98/Silva.bacteria.zip
wget http://mothur.org/w/images/5/59/Trainset9_032012.pds.zip
wget http://hpc.ilri.cgiar.org/beca/training/AdvancedBFX2015/metagenomics/Hands-on_16S_rRNA_gene_Metagenomics-Mothur_tutorial.pdf
unzip Silva*.zip
unzip data.zip
unzip Train*.zip
rm *.zip
cd /home
#unzip reference/*.zip
