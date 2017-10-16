#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_pds_age_male
#SBATCH --output=output/allAff_pds_age_male.log
#SBATCH --error=output/allAff_pds_male_age_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_pds_male/

3dLME -prefix allAff_pds_age_male \
-jobs 8 \
-model  "pdss_c+pdss_c2+age_C" \
-ranEff "~1" \
-SS_type 3 \
-qVars "pdss_c,pdss_c2,age_c" \
-qVarCenters "0,0,0" \
-resid	allAff_pds_age_male_residuals	\
-dataTable \
Subj	gender	pdss_c	pdss_c2	age_c	age_c2	InputFile \
05	male	-0.189873417721519	0.0360519147572505	-2.42042855133615	5.85847437212319	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	0.810126582278481	0.656305079314212	0.640571448663854	0.410331780843309	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	1.31012658227848	1.71643166159269	4.32657144866386	18.7192205003933	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
08	male	-0.189873417721519	0.0360519147572505	1.23257144866385	1.51923237606131	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	0.810126582278481	0.656305079314212	-2.78142855133614	7.73634478618788	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	-0.689873417721519	0.47592533247877	0.329571448663854	0.108617339774391	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
11	male	-0.689873417721519	0.47592533247877	0.590571448663855	0.348774635976924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-1.18987341772152	1.41579875020029	-2.41542855133615	5.83429508660983	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-1.18987341772152	1.41579875020029	-2.56242855133615	6.56604008070266	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
17	male	-1.68987341772152	2.85567216792181	-1.90942855133614	3.64591739265765	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	1.81012658227848	3.27655824387117	1.01857144866385	1.03748779603318	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	0.310126582278481	0.0961784970357314	-2.51542855133614	6.32738079687706	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	0.310126582278481	0.0961784970357314	0.765571448663854	0.586099643009272	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	1.81012658227848	3.27655824387117	4.12557144866386	17.0203397780304	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
26	male	-1.68987341772152	2.85567216792181	-2.41542855133615	5.83429508660983	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	-0.189873417721519	0.0360519147572505	-2.37342855133615	5.63316308829759	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	1.31012658227848	1.71643166159269	0.512571448663854	0.262729489985362	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	1.81012658227848	3.27655824387117	4.22357144866385	17.8385557819685	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
30	male	-0.189873417721519	0.0360519147572505	-2.84542855133614	8.09646364075891	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	1.81012658227848	3.27655824387117	0.862793670886054	0.744412918521033	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	2.31012658227848	5.33668482614966	3.90757144866386	15.2691146264129	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
33	male	-0.189873417721519	0.0360519147572505	-2.76542855133614	7.64759507254513	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	-0.189873417721519	0.0360519147572505	0.393571448663854	0.154898485203365	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	1.81012658227848	3.27655824387117	3.87947144866385	15.050298720998	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	-0.689873417721519	0.47592533247877	1.12657144866385	1.26916322894458	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
37	male	0.810126582278481	0.656305079314212	-2.46742855133614	6.08820365594879	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-1.68987341772152	2.85567216792181	-1.76242855133615	3.10615439856483	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	1.31012658227848	1.71643166159269	0.946571448663855	0.895997507425589	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	1.81012658227848	3.27655824387117	4.91557144866385	24.1628426669193	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
40	male	0.310126582278481	0.0961784970357314	-2.50342855133615	6.26715451164499	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	0.310126582278481	0.0961784970357314	0.298571448663854	0.0891449099572321	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
47	male	-0.689873417721519	0.47592533247877	-1.86542855133615	3.47982368014007	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
52	male	-1.68987341772152	2.85567216792181	-2.49542855133615	6.22716365482361	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	0.810126582278481	0.656305079314212	-2.50142855133615	6.25714479743965	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
55	male	-0.189873417721519	0.0360519147572505	-2.52042855133615	6.35256008239042	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	1.81012658227848	3.27655824387117	1.07668255977496	1.15924533452355	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	1.81012658227848	3.27655824387117	4.80557144866385	23.0935169482132	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
61	male	-0.689873417721519	0.47592533247877	-2.34542855133614	5.50103508942277	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-0.689873417721519	0.47592533247877	-1.82342855133615	3.32489168182784	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	-1.68987341772152	2.85567216792181	-2.48442855133615	6.17238522669422	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-0.689873417721519	0.47592533247877	-2.51742855133615	6.3374465110824	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	-0.189873417721519	0.0360519147572505	1.01557144866385	1.0313853673412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	1.81012658227848	3.27655824387117	4.61557144866385	21.3034997977209	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
67	male	-0.689873417721519	0.47592533247877	-2.38742855133615	5.69981508773501	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
70	male	-1.68987341772152	2.85567216792181	-2.41242855133614	5.81981151530181	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	-1.18987341772152	1.41579875020029	0.801682559774955	0.642694926647324	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	1.81012658227848	3.27655824387117	3.94557144866386	15.5675340565114	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-1.18987341772152	1.41579875020029	-1.77342855133615	3.14504882669422	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	1.31012658227848	1.71643166159269	1.56279367088606	2.44232405776151	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
73	male	-1.18987341772152	1.41579875020029	-2.20942855133615	4.88157452345934	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	0.310126582278481	0.0961784970357314	0.779571448663855	0.607731643571862	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	1.31012658227848	1.71643166159269	3.71857144866386	13.827773618818	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-1.18987341772152	1.41579875020029	-1.82642855133615	3.33584125313585	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	1.81012658227848	3.27655824387117	4.01557144866386	16.1248140593243	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-0.689873417721519	0.47592533247877	-1.75642855133615	3.08504125594879	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-0.689873417721519	0.47592533247877	-1.99542855133615	3.98173510348747	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	0.810126582278481	0.656305079314212	0.834571448663855	0.696509502924885	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
78	male	-1.68987341772152	2.85567216792181	-1.84542855133614	3.40560653808662	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	0.810126582278481	0.656305079314212	0.876571448663855	0.768377504612649	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	1.81012658227848	3.27655824387117	4.98557144866385	24.8559226697322	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-0.189873417721519	0.0360519147572505	-2.05142855133615	4.20835910123712	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
81	male	-0.689873417721519	0.47592533247877	-2.07842855133615	4.31986524300927	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-1.18987341772152	1.41579875020029	0.0435714486638545	0.00189847113866691	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
84	male	-0.689873417721519	0.47592533247877	0.676682559774955	0.457899286703585	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	2.31012658227848	5.33668482614966	4.29557144866385	18.4519340705761	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
86	male	-0.689873417721519	0.47592533247877	-1.88142855133615	3.53977339378283	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	0.810126582278481	0.656305079314212	0.840571448663855	0.706560360308852	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
87	male	-1.68987341772152	2.85567216792181	-2.13742855133615	4.56860081206694	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	0.310126582278481	0.0961784970357314	3.95997144866385	15.6813738742329	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-1.18987341772152	1.41579875020029	-2.16542855133615	4.68908081094176	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	0.810126582278481	0.656305079314212	0.968349226441655	0.937700224350151	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-1.68987341772152	2.85567216792181	-2.12842855133615	4.53020809814288	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	-1.18987341772152	1.41579875020029	0.868571448663854	0.754416361434026	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	0.810126582278481	0.656305079314212	4.21557144866386	17.7710426387899	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-1.68987341772152	2.85567216792181	-2.44842855133615	5.99480237099802	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	-1.68987341772152	2.85567216792181	0.0735714486638539	0.00541275805849809	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	0.810126582278481	0.656305079314212	3.38757144866385	11.4756403198025	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
93	male	-1.68987341772152	2.85567216792181	-2.60942855133615	6.80911736452826	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
97	male	-1.18987341772152	1.41579875020029	-2.46242855133615	6.06355437043543	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii
