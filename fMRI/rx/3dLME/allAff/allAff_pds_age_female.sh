#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_pds_age_female
#SBATCH --output=output/allAff_pds_age_female.log
#SBATCH --error=output/allAff_pds_age_female_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_pds_female/

3dLME -prefix allAff_pds_age_female \
-jobs 8 \
-model  "pdss_c+pdss_c2+age_c" \
-ranEff "~1" \
-SS_type 3 \
-qVars "pdss_c,pdss_c2,age_c" \
-qVarCenters "0,0,0" \
-resid	allAff_pds_age_female_residuals \
-dataTable \
Subj	gender	pdss_c	pdss_c2	age_c	age_c2	InputFile \
01	female	-0.176136363636364	0.0310240185950414	-1.96852184343434	3.87507824807814	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	1.32386363636364	1.75261492768595	1.11247815656566	1.23760764883572	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
04	female	-1.67613636363636	2.80943310950413	-2.66852184343434	7.12100882888622	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
06	female	-2.17613636363636	4.7355694731405	-1.98752184343434	3.95024307812865	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-0.676136363636364	0.457160382231405	-2.06252184343434	4.2539963546438	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	1.32386363636364	1.75261492768595	0.937478156565657	0.878865294037742	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
10	female	-1.17613636363636	1.38329674586777	-2.03452184343434	4.13927913141148	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
16	female	-1.67613636363636	2.80943310950413	-1.89052184343434	3.57407284050238	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	-0.176136363636364	0.0310240185950414	0.195478156565658	0.0382117096943078	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	1.82386363636364	3.32647856404959	4.27047815656566	18.2369836857044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
19	female	1.82386363636364	3.32647856404959	0.659478156565658	0.434911438987239	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	1.82386363636364	3.32647856404959	4.13747815656566	17.1187254960579	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-1.17613636363636	1.38329674586777	-2.37952184343434	5.66212420338118	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
20	female	-0.676136363636364	0.457160382231405	0.681478156565657	0.464412477876126	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave2_con_0006.nii \
22	female	-1.17613636363636	1.38329674586777	-2.60152184343434	6.76791590186602	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	-1.67613636363636	2.80943310950413	0.226478156565658	0.0512923554013789	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	1.32386363636364	1.75261492768595	3.54047815656566	12.5349855771186	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-1.67613636363636	2.80943310950413	-2.67952184343434	7.17983730944178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	-0.176136363636364	0.0310240185950414	0.451478156565658	0.203832525855925	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	1.32386363636364	1.75261492768595	3.52847815656566	12.450158101361	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-1.17613636363636	1.38329674586777	-2.51252184343434	6.31276601373471	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	1.32386363636364	1.75261492768595	1.30947815656566	1.71473304252259	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	1.82386363636364	3.32647856404959	4.04847815656566	16.3901753841893	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
29	female	-1.17613636363636	1.38329674586777	-2.30752184343434	5.32465705792663	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	1.82386363636364	3.32647856404959	0.534478156565658	0.285666899845824	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	1.32386363636364	1.75261492768595	3.90667815656566	15.2621342189872	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
31	female	-1.17613636363636	1.38329674586777	-2.40452184343434	5.78172529555289	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-1.67613636363636	2.80943310950413	-2.84652184343434	8.10268660514885	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	0.323863636363636	0.104887654958678	0.801144823232358	0.641833027792006	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	1.82386363636364	3.32647856404959	2.50347815656566	6.26740288040138	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
35	female	-0.176136363636364	0.0310240185950414	-2.59652184343434	6.74192568343167	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	1.82386363636364	3.32647856404959	0.362478156565658	0.131390413987237	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	1.82386363636364	3.32647856404959	3.40347815656566	11.5836635622196	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	-1.17613636363636	1.38329674586777	-1.99352184343434	3.97412934024986	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
39	female	-1.17613636363636	1.38329674586777	-1.89352184343434	3.58542497156299	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
41	female	-2.17613636363636	4.7355694731405	-2.67152184343434	7.13702895994683	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	1.32386363636364	1.75261492768595	1.05947815656566	1.12249396423976	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	1.82386363636364	3.32647856404959	4.29247815656566	18.4253687245933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-2.17613636363636	4.7355694731405	-2.11852184343434	4.48813480110844	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	0.323863636363636	0.104887654958678	0.628478156565658	0.394984793280167	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	1.82386363636364	3.32647856404959	4.06247815656566	16.5037287725731	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-2.17613636363636	4.7355694731405	-2.61852184343434	6.85665664454279	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	-0.676136363636364	0.457160382231405	0.412478156565658	0.170138229643804	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	1.82386363636364	3.32647856404959	3.65347815656566	13.3479026405024	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	-0.676136363636364	0.457160382231405	-2.43252184343434	5.91716251878521	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	0.823863636363636	0.678751291322314	0.728922601010057	0.531328158263266	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	1.82386363636364	3.32647856404959	3.75147815656566	14.0735883591893	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
48	female	-2.17613636363636	4.7355694731405	-2.63252184343434	6.93017125615895	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	-1.17613636363636	1.38329674586777	-2.27152184343434	5.15981148519935	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
49	female	-0.176136363636364	0.0310240185950414	0.545478156565657	0.297546419290268	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave2_con_0006.nii \
51	female	-0.176136363636364	0.0310240185950414	-2.40452184343434	5.78172529555289	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	1.82386363636364	3.32647856404959	0.401478156565657	0.161184710199358	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave2_con_0006.nii \
54	female	-2.17613636363636	4.7355694731405	-2.42652184343434	5.888008256664	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	0.823863636363636	0.678751291322314	0.856478156565657	0.733554832674107	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
57	female	-2.17613636363636	4.7355694731405	-2.42952184343434	5.9025763877246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	1.32386363636364	1.75261492768595	1.04281148989896	1.08745580346528	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	1.82386363636364	3.32647856404959	4.87947815656566	23.8093070804014	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	-0.676136363636364	0.457160382231405	-1.88752184343434	3.56273870944178	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	1.82386363636364	3.32647856404959	4.75947815656566	22.6526323228256	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	-1.17613636363636	1.38329674586777	-2.54652184343434	6.48477349908825	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	1.82386363636364	3.32647856404959	0.995589267676758	0.991197989913143	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	1.82386363636364	3.32647856404959	4.06947815656566	16.560652466765	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-2.17613636363636	4.7355694731405	-2.57652184343434	6.6384648096943	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	-0.676136363636364	0.457160382231405	0.567478156565658	0.322031458179157	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
65	female	-0.676136363636364	0.457160382231405	-1.83252184343434	3.358136306664	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	0.823863636363636	0.678751291322314	0.409478156565658	0.16767236070441	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	1.32386363636364	1.75261492768595	3.93947815656566	15.5194881460579	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
68	female	-1.67613636363636	2.80943310950413	-2.61252184343434	6.82527038242157	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L068_ses-wave1_con_0006.nii \
72	female	0.323863636363636	0.104887654958678	-1.91852184343434	3.68072606373471	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	1.32386363636364	1.75261492768595	0.240478156565658	0.057829743785217	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
72	female	1.82386363636364	3.32647856404959	3.51247815656566	12.3375028003509	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave3_con_0006.nii \
77	female	0.823863636363636	0.678751291322314	-1.91252184343434	3.6577398016135	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
80	female	-0.676136363636364	0.457160382231405	-1.87152184343434	3.50259401045188	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	1.32386363636364	1.75261492768595	0.834478156565657	0.696353793785217	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	1.82386363636364	3.32647856404959	3.88167815656566	15.067425311159	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
82	female	-1.67613636363636	2.80943310950413	-2.48752184343434	6.18776492156299	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
83	female	-1.67613636363636	2.80943310950413	-2.59652184343434	6.74192568343167	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	0.823863636363636	0.678751291322314	0.676144823232358	0.457171821983916	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
85	female	-1.17613636363636	1.38329674586777	-2.26852184343434	5.14619135413875	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
91	female	-1.67613636363636	2.80943310950413	-2.30952184343434	5.33389114530037	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-2.17613636363636	4.7355694731405	-2.55152184343434	6.51026371752258	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
94	female	-1.17613636363636	1.38329674586777	-2.00752184343434	4.03014395186602	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	0.323863636363636	0.104887654958678	0.612478156565658	0.375129492270066	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	1.82386363636364	3.32647856404959	3.56777815656566	12.729040974467	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-2.17613636363636	4.7355694731405	-2.62652184343434	6.89861699403774	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-1.67613636363636	2.80943310950413	-2.61852184343434	6.85665664454279	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	0.823863636363636	0.678751291322314	0.495478156565657	0.245498603633701	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	1.82386363636364	3.32647856404959	3.96947815656566	15.7567568354519	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii
