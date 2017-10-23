#!/bin/bash

# This script saves functional maps (after cluster thresholding), and converts them to niftis

# Load packages
# ------------------------------------------------------------------------------------------

module load prl afni

# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
rx_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked' #RX output directory

# variables
rx_models=(age pds logtest)
extra_models=(pds_age logtest_age)

# Save masks
# -------------------------------------------------------------------------------------------------
cd $rx_dir

cd eachAff_age/

3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 1 -1tindex 1 -prefix age eachAff_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 2 -1tindex 2 -prefix gender eachAff_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 4 -1tindex 4 -prefix age2 eachAff_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 5 -1tindex 5 -prefix age.gender eachAff_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 8 -1tindex 8 -prefix age2.gender eachAff_age+tlrc

3dAFNItoNIFTI -prefix age age+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix age2 age2+tlrc["0"]
3dAFNItoNIFTI -prefix age.gender age.gender+tlrc["0"]
3dAFNItoNIFTI -prefix age2.gender age2.gender+tlrc["0"]

cd ../eachAff_pds/

3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 1 -1tindex 1 -prefix pds eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 2 -1tindex 2 -prefix gender eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 4 -1tindex 4 -prefix pds2 eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 5 -1tindex 5 -prefix pds.gender eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 8 -1tindex 8 -prefix pds2.gender eachAff_pds+tlrc

3dAFNItoNIFTI -prefix pds pds+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix pds2 pds2+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender pds.gender+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender pds2.gender+tlrc["0"]

3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 1 -1tindex 1 -prefix pds_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 2 -1tindex 2 -prefix gender_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 4 -1tindex 4 -prefix pds2_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 5 -1tindex 5 -prefix pds.gender_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 8 -1tindex 8 -prefix pds2.gender_age eachAff_pds_age+tlrc

3dAFNItoNIFTI -prefix pds_age pds_age+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds2_age pds2_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender_age pds.gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender_age pds2.gender_age+tlrc["0"]

cd ../eachAff_logtest/

3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 1 -1tindex 1 -prefix logtest eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 2 -1tindex 2 -prefix gender eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 4 -1tindex 4 -prefix logtest2 eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 5 -1tindex 5 -prefix logtest.gender eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 8 -1tindex 8 -prefix logtest2.gender eachAff_logtest+tlrc

3dAFNItoNIFTI -prefix logtest logtest+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2 logtest2+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender logtest.gender+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender logtest2.gender+tlrc["0"]

3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 1 -1tindex 1 -prefix logtest_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 2 -1tindex 2 -prefix gender_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 4 -1tindex 4 -prefix logtest2_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 5 -1tindex 5 -prefix logtest.gender_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 8 -1tindex 8 -prefix logtest2.gender_age eachAff_logtest_age+tlrc

3dAFNItoNIFTI -prefix logtest_age logtest_age+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2_age logtest2_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender_age logtest.gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender_age logtest2.gender_age+tlrc["0"]
