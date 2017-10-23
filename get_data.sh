#!/bin/bash
# script to pull data for Mothur tutorial from Zenodo
cd /home
# mkdir /data /reference
wget https://zenodo.org/record/165147/files/input_data.zip 
wget https://zenodo.org/record/165147/files/reference_data.zip 
unzip *.zip
#unzip reference/*.zip
