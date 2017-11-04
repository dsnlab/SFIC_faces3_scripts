#!/bin/bash

# This script saves functional maps (after cluster thresholding), and converts them to niftis
# It saves both thresholded F maps, and order cluster maps (i.e. each cluster assigned a single value base on its size)
# Cluster ordered map is used to extract paramestimates for visualization (in extract_ParameterEstimates.sh)

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

3dclust -savemask age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_age+tlrc.'[1]' > age_clust.txt
3dclust -savemask gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_age+tlrc.'[2]' > gender_clust.txt
3dclust -savemask age2_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_age+tlrc.'[4]' > age2_clust.txt
3dclust -savemask age.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_age+tlrc.'[5]' > age.gender_clust.txt
3dclust -savemask age2.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_age+tlrc.'[6]' > age2.gender_clust.txt

3dAFNItoNIFTI -prefix age age+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix age2 age2+tlrc["0"]
3dAFNItoNIFTI -prefix age.gender age.gender+tlrc["0"]
3dAFNItoNIFTI -prefix age2.gender age2.gender+tlrc["0"]

3dAFNItoNIFTI -prefix age_clust age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix gender_clust gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix age2_clust age2_clust+tlrc["0"]
3dAFNItoNIFTI -prefix age.gender_clust age.gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix age2.gender_clust age2.gender_clust+tlrc["0"]

cd ../eachAff_pds/

3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 1 -1tindex 1 -prefix pds eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 2 -1tindex 2 -prefix gender eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 4 -1tindex 4 -prefix pds2 eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 5 -1tindex 5 -prefix pds.gender eachAff_pds+tlrc
3dmerge -dxyz=1 -1clust 1 25 -1thresh 10.92 -1dindex 8 -1tindex 8 -prefix pds2.gender eachAff_pds+tlrc

3dclust -savemask pds_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[1]' > pds_clust.txt
3dclust -savemask gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[2]' > gender_clust.txt
3dclust -savemask pds2_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[4]' > pds2_clust.txt
3dclust -savemask pds.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[5]' > pds.gender_clust.txt
3dclust -savemask pds2.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[6]' > pds2.gender_clust.txt

3dAFNItoNIFTI -prefix pds pds+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix pds2 pds2+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender pds.gender+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender pds2.gender+tlrc["0"]

3dAFNItoNIFTI -prefix pds_clust pds_clust+tlrc["0"]
3dAFNItoNIFTI -prefix gender_clust gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds2_clust pds2_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender_clust pds.gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender_clust pds2.gender_clust+tlrc["0"]

3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 1 -1tindex 1 -prefix pds_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 2 -1tindex 2 -prefix gender_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 4 -1tindex 4 -prefix pds2_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 5 -1tindex 5 -prefix pds.gender_age eachAff_pds_age+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.92 -1dindex 8 -1tindex 8 -prefix pds2.gender_age eachAff_pds_age+tlrc

3dclust -savemask pds_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[1]' > pds_age_clust.txt
3dclust -savemask gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[2]' > gender_age_clust.txt
3dclust -savemask pds2_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[4]' > pds2_age_clust.txt
3dclust -savemask pds.gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[5]' > pds.gender_age_clust.txt
3dclust -savemask pds2.gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_pds+tlrc.'[6]' > pds2.gender_age_clust.txt

3dAFNItoNIFTI -prefix pds_age pds_age+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds2_age pds2_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender_age pds.gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender_age pds2.gender_age+tlrc["0"]

3dAFNItoNIFTI -prefix pds_age_clust pds_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age_clust gender_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds2_age_clust pds2_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds.gender_age_clust pds.gender_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix pds2.gender_age_clust pds2.gender_age_clust+tlrc["0"]

cd ../eachAff_logtest/

3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 1 -1tindex 1 -prefix logtest eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 2 -1tindex 2 -prefix gender eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 4 -1tindex 4 -prefix logtest2 eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 5 -1tindex 5 -prefix logtest.gender eachAff_logtest+tlrc
3dmerge -dxyz=1 -1clust 1 29 -1thresh 10.91 -1dindex 8 -1tindex 8 -prefix logtest2.gender eachAff_logtest+tlrc

3dclust -savemask logtest_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[1]' > logtest_clust.txt
3dclust -savemask gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[2]' > gender_clust.txt
3dclust -savemask logtest2_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[4]' > logtest2_clust.txt
3dclust -savemask logtest.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[5]' > logtest.gender_clust.txt
3dclust -savemask logtest2.gender_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[6]' > logtest2.gender_clust.txt

3dAFNItoNIFTI -prefix logtest logtest+tlrc["0"]
3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2 logtest2+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender logtest.gender+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender logtest2.gender+tlrc["0"]

3dAFNItoNIFTI -prefix logtest_clust logtest_clust+tlrc["0"]
3dAFNItoNIFTI -prefix gender_clust gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2_clust logtest2_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender_clust logtest.gender_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender_clust logtest2.gender_clust+tlrc["0"]

3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 1 -1tindex 1 -prefix logtest_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 2 -1tindex 2 -prefix gender_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 4 -1tindex 4 -prefix logtest2_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 5 -1tindex 5 -prefix logtest.gender_age eachAff_logtest_age+tlrc
3dmerge -dxyz=1 -1clust 1 26 -1thresh 10.91 -1dindex 8 -1tindex 8 -prefix logtest2.gender_age eachAff_logtest_age+tlrc

3dclust -savemask logtest_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[1]' > logtest_age_clust.txt
3dclust -savemask gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[2]' > gender_age_clust.txt
3dclust -savemask logtest2_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[4]' > logtest2_age_clust.txt
3dclust -savemask logtest.gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[5]' > logtest.gender_age_clust.txt
3dclust -savemask logtest2.gender_age_clust -orient LPI -noabs -1thresh 10.91 -NN3 29 eachAff_logtest+tlrc.'[6]' > logtest2.gender_age_clust.txt

3dAFNItoNIFTI -prefix logtest_age logtest_age+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2_age logtest2_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender_age logtest.gender_age+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender_age logtest2.gender_age+tlrc["0"]

3dAFNItoNIFTI -prefix logtest_age_clust logtest_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix gender_age_clust gender_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2_age_clust logtest2_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest.gender_age_clust logtest.gender_age_clust+tlrc["0"]
3dAFNItoNIFTI -prefix logtest2.gender_age_clust logtest2.gender_age_clust+tlrc["0"]
