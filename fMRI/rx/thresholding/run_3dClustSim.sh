#!/bin/bash

# This script runs 3dClustSim for each model using acf parameters generated by calculateACF.sh

# Specify variables
# ------------------------------------------------------------------------------------------

# RX directories (where model masks can be found)
afniDir=/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/thresholding

# Run 3dClustSim
# ------------------------------------------------------------------------------------------
3dClustSim -mask "${afniDir}"/allAff_age+tlrc[0] -acf 0.513196  5.01536  11.8679 > "${outputDir}"/allAff_age.txt

3dClustSim -mask "${afniDir}"/allAff_pds_female+tlrc[0] -acf 0.498853  5.03195  11.616 > "${outputDir}"/allAff_pds_female.txt

3dClustSim -mask "${afniDir}"/allAff_pds_male+tlrc[0] -acf 0.489787  4.99616  11.8327 > "${outputDir}"/allAff_pds_male.txt

3dClustSim -mask "${afniDir}"/allAff_logtest_female+tlrc[0] -acf 0.495818  5.00338  11.3704 > "${outputDir}"/allAff_logtest_female.txt

3dClustSim -mask "${afniDir}"/allAff_logtest_male+tlrc[0] -acf 0.491569  5.00337  11.9905 > "${outputDir}"/allAff_logtest_male.txt

3dClustSim -mask "${afniDir}"/allAff_pds_age_female+tlrc[0] -acf 0.501473  5.02738  11.6646 > "${outputDir}"/allAff_pds_age_female.txt

3dClustSim -mask "${afniDir}"/allAff_pds_age_male+tlrc[0] -acf 0.489796  4.99616  11.8328 > "${outputDir}"/allAff_pds_age_male.txt

3dClustSim -mask "${afniDir}"/allAff_logtest_age_female+tlrc[0] -acf 0.498813  4.99919  11.4282 > "${outputDir}"/allAff_logtest_age_female.txt

3dClustSim -mask "${afniDir}"/allAff_logtest_age_male+tlrc[0] -acf 0.489427  5.00685  11.9074 > "${outputDir}"/allAff_logtest_age_male.txt

3dClustSim -mask "${afniDir}"/eachAff_age+tlrc[0] -acf 0.516664  4.89457  11.9309 > "${outputDir}"/eachAff_age.txt

3dClustSim -mask "${afniDir}"/eachAff_pds_female+tlrc[0] -acf 0.513363  4.91403  11.805 > "${outputDir}"/eachAff_pds_female.txt

3dClustSim -mask "${afniDir}"/eachAff_pds_male+tlrc[0] -acf 0.514121  4.84841  12.1415 > "${outputDir}"/eachAff_pds_male.txt

3dClustSim -mask "${afniDir}"/eachAff_logtest_female+tlrc[0] -acf 0.510319  4.90094  11.7162 > "${outputDir}"/eachAff_logtest_female.txt

3dClustSim -mask "${afniDir}"/eachAff_logtest_male+tlrc[0] -acf 0.510974  4.84949  12.1699 > "${outputDir}"/eachAff_logtest_male.txt

3dClustSim -mask "${afniDir}"/eachAff_pds_age_female+tlrc[0] -acf 0.519991  4.92127  11.874 > "${outputDir}"/eachAff_pds_age_female.txt

3dClustSim -mask "${afniDir}"/eachAff_pds_age_male+tlrc[0] -acf 0.517566  4.85133  12.1837 > "${outputDir}"/eachAff_pds_age_male.txt

3dClustSim -mask "${afniDir}"/eachAff_logtest_age_female+tlrc[0] -acf 0.512457  4.90314  11.7582 > "${outputDir}"/eachAff_logtest_age_female.txt

3dClustSim -mask "${afniDir}"/eachAff_logtest_age_male+tlrc[0] -acf 0.511909  4.85482  12.1706 > "${outputDir}"/eachAff_logtest_age_male.txt