#!/bin/bash
# script to pull data for Mothur tutorial from Zenodo
cd /home
mkdir /data /reference
wget https://zenodo.org/record/165147/files/input_data.zip data
wget https://zenodo.org/record/165147/files/reference_data.zip reference
unzip data/*.zip
unzip reference/*.zip
