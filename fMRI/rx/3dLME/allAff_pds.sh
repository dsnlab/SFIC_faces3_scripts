#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_pds
#SBATCH --output=output/allAff_pds.log
#SBATCH --error=output/allAff_pds_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_pds/

3dLME -prefix allAff_pds \
-jobs 8 \
-model  "pdss_c*gender+pdss_c2*gender" \
-ranEff "~1" \
-SS_type 3 \
-qVars "pdss_c,pdss_c2" \
-qVarCenters "0,0" \
-resid	allAff_pds_residuals \
-num_glt 4 \
-gltLabel 1 'pds.male' -gltCode  1 'gender : 1*male pdss_c : ' \
-gltLabel 2 'pds.female' -gltCode  2 'gender : 1*female pdss_c : ' \
-gltLabel 3 'pds_sq.male' -gltCode  3 'gender : 1*male pdss_c2 : ' \
-gltLabel 4 'pds_sq.female' -gltCode  4 'gender : 1*female pdss_c2 : ' \
-dataTable \
Subj	gender	pdss_c	pdss_c2	age_c	age_c2	InputFile \
01	female	0.0538922155688621	0.00290437089892071	-1.94198669328011	3.771312316877	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	1.55389221556886	2.41458101760551	1.13901330671989	1.29735131288499	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
04	female	-1.44610778443114	2.09122772419233	-2.64198669328011	6.98009368746915	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
05	male	-0.446107784431138	0.199012155330059	-2.44998669328011	6.00243479724959	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	0.553892215568862	0.306796586467783	0.611013306719894	0.373337260988779	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	1.05389221556886	1.11068880203664	4.2970133067199	18.4643233581278	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
06	female	-1.94610778443114	3.78733550862347	-1.96098669328011	3.84546881122164	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-0.446107784431138	0.199012155330059	-2.03598669328011	4.14524181521366	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	1.55389221556886	2.41458101760551	0.964013306719893	0.929321655533023	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
08	male	-0.446107784431138	0.199012155330059	1.20301330671989	1.44724101614513	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	0.553892215568862	0.306796586467783	-2.81098669328011	7.90164618979782	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	-0.946107784431138	0.895119939761196	0.300013306719894	0.0900079842090051	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
10	female	-0.946107784431138	0.895119939761196	-2.00798669328011	4.03201056038997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
11	male	-0.946107784431138	0.895119939761196	0.561013306719895	0.314735930316791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-1.44610778443114	2.09122772419233	-2.44498669328011	5.97795993031678	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-1.44610778443114	2.09122772419233	-2.59198669328011	6.71839501814114	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
16	female	-1.44610778443114	2.09122772419233	-1.86398669328011	3.4744463927253	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	0.0538922155688621	0.00290437089892071	0.222013306719894	0.0492899083607019	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	2.05389221556886	4.21847323317437	4.2970133067199	18.4643233581278	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
17	male	-1.94610778443114	3.78733550862347	-1.93898669328011	3.75966939671732	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	1.55389221556886	2.41458101760551	0.989013306719894	0.978147320869019	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	0.0538922155688621	0.00290437089892071	-2.54498669328011	6.4769572689728	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	0.0538922155688621	0.00290437089892071	0.736013306719894	0.541715587668752	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	1.55389221556886	2.41458101760551	4.09601330671989	16.7773250088264	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
19	female	2.05389221556886	4.21847323317437	0.686013306719895	0.470614256996764	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	2.05389221556886	4.21847323317437	4.16401330671989	17.3390068185403	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-0.946107784431138	0.895119939761196	-2.35298669328011	5.53654637875325	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
20	female	-0.446107784431138	0.199012155330059	0.708013306719893	0.501282842492438	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave2_con_0006.nii \
22	female	-0.946107784431138	0.895119939761196	-2.57498669328011	6.63055647056962	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	-1.44610778443114	2.09122772419233	0.253013306719895	0.0640157333773357	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	1.55389221556886	2.41458101760551	3.56701330671989	12.7235839303168	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-1.44610778443114	2.09122772419233	-2.65298669328011	7.03833839472131	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	0.0538922155688621	0.00290437089892071	0.478013306719895	0.228496721401288	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	1.55389221556886	2.41458101760551	3.55501330671989	12.6381196109555	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-0.946107784431138	0.895119939761196	-2.48598669328011	6.18012983916575	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	1.55389221556886	2.41458101760551	1.33601330671989	1.78493155573262	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	2.05389221556886	4.21847323317437	4.07501330671989	16.6057334499442	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
26	male	-1.94610778443114	3.78733550862347	-2.44498669328011	5.97795993031678	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	-0.446107784431138	0.199012155330059	-2.40298669328011	5.77434504808126	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	1.05389221556886	1.11068880203664	0.483013306719894	0.233301854468486	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	1.55389221556886	2.41458101760551	4.19401330671989	17.5897476169435	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
29	female	-0.946107784431138	0.895119939761196	-2.28098669328011	5.20290029492091	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	2.05389221556886	4.21847323317437	0.561013306719895	0.314735930316791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	1.55389221556886	2.41458101760551	3.93321330671989	15.4701669161584	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
30	male	-0.446107784431138	0.199012155330059	-2.87498669328011	8.26554848653767	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	1.55389221556886	2.41458101760551	0.833235528942094	0.694281446691411	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	2.05389221556886	4.21847323317437	3.87801330671989	15.0389872070966	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
31	female	-0.946107784431138	0.895119939761196	-2.37798669328011	5.65482071341725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-1.44610778443114	2.09122772419233	-2.81998669328011	7.95232495027686	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	0.553892215568862	0.306796586467783	0.827679973386594	0.685054138345233	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	2.05389221556886	4.21847323317437	2.53001330671989	6.40096733217973	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
33	male	-0.446107784431138	0.199012155330059	-2.79498669328011	7.81195061561286	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	-0.446107784431138	0.199012155330059	0.364013306719894	0.132505687469152	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	1.55389221556886	2.41458101760551	3.84991330671989	14.8218324692589	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	-0.946107784431138	0.895119939761196	1.09701330671989	1.20343819512052	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
35	female	0.0538922155688621	0.00290437089892071	-2.56998669328011	6.60483160363681	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	2.05389221556886	4.21847323317437	0.389013306719894	0.151331352805146	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	2.05389221556886	4.21847323317437	3.43001330671989	11.7649912842755	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	-0.946107784431138	0.895119939761196	-1.96698669328011	3.869036651541	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
37	male	0.553892215568862	0.306796586467783	-2.49698669328011	6.23494254641791	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-1.94610778443114	3.78733550862347	-1.79198669328011	3.21121630889297	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	1.05389221556886	1.11068880203664	0.917013306719895	0.840913404701356	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	1.55389221556886	2.41458101760551	4.88601330671989	23.8731260334439	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
39	female	-0.946107784431138	0.895119939761196	-1.86698669328011	3.48563931288498	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
40	male	0.0538922155688621	0.00290437089892071	-2.53298669328011	6.41602158833409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	0.0538922155688621	0.00290437089892071	0.269013306719893	0.0723681591923713	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
41	female	-1.94610778443114	3.78733550862347	-2.64498669328011	6.99595460762883	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	1.55389221556886	2.41458101760551	1.08601330671989	1.17942490237268	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	2.05389221556886	4.21847323317437	4.31901330671989	18.6538759436235	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-1.94610778443114	3.78733550862347	-2.09198669328011	4.37640832486103	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	0.553892215568862	0.306796586467783	0.655013306719894	0.42904243198013	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	2.05389221556886	4.21847323317437	4.08901330671989	16.7200298225324	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-1.94610778443114	3.78733550862347	-2.59198669328011	6.71839501814114	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	-0.446107784431138	0.199012155330059	0.439013306719895	0.192732683477137	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	2.05389221556886	4.21847323317437	3.68001330671989	13.5424979376355	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	-0.446107784431138	0.199012155330059	-2.40598669328011	5.78877196824094	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	1.05389221556886	1.11068880203664	0.755457751164293	0.570716413794211	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	2.05389221556886	4.21847323317437	3.77801330671989	14.2733845457526	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
47	male	-0.946107784431138	0.895119939761196	-1.89498669328011	3.59097456770867	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
48	female	-1.94610778443114	3.78733550862347	-2.60598669328011	6.79116664555299	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	-0.946107784431138	0.895119939761196	-2.24498669328011	5.03996525300475	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
49	female	0.0538922155688621	0.00290437089892071	0.572013306719894	0.327199223064628	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave2_con_0006.nii \
51	female	0.0538922155688621	0.00290437089892071	-2.37798669328011	5.65482071341725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	2.05389221556886	4.21847323317437	0.428013306719894	0.183195390729298	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave2_con_0006.nii \
52	male	-1.94610778443114	3.78733550862347	-2.52498669328011	6.3755578012416	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	0.553892215568862	0.306796586467783	-2.53098669328011	6.40589364156096	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
54	female	-1.94610778443114	3.78733550862347	-2.39998669328011	5.75993612792158	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	1.05389221556886	1.11068880203664	0.883013306719894	0.779712499844402	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
55	male	-0.446107784431138	0.199012155330059	-2.54998669328011	6.50243213590561	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	1.55389221556886	2.41458101760551	1.04712441783099	1.0964695464179	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	1.55389221556886	2.41458101760551	4.77601330671989	22.8103031059655	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
57	female	-1.94610778443114	3.78733550862347	-2.40298669328011	5.77434504808126	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	1.55389221556886	2.41458101760551	1.06934664005319	1.14350223659306	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	2.05389221556886	4.21847323317437	4.90601330671989	24.0689665657127	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	-0.446107784431138	0.199012155330059	-1.86098669328011	3.46327147256562	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	2.05389221556886	4.21847323317437	4.78601330671989	22.9059233720999	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	-0.946107784431138	0.895119939761196	-2.51998669328011	6.35033293430881	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	2.05389221556886	4.21847323317437	1.02212441783099	1.04473832552635	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	2.05389221556886	4.21847323317437	4.09601330671989	16.7773250088264	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-1.94610778443114	3.78733550862347	-2.54998669328011	6.50243213590561	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	-0.446107784431138	0.199012155330059	0.594013306719894	0.352851808560303	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
61	male	-0.946107784431138	0.895119939761196	-2.37498669328011	5.64056179325757	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-0.946107784431138	0.895119939761196	-1.85298669328011	3.43355968547314	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	-1.94610778443114	3.78733550862347	-2.51398669328011	6.32012909398944	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-0.946107784431138	0.895119939761196	-2.54698669328011	6.48714121574593	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	-0.446107784431138	0.199012155330059	0.986013306719894	0.972222241028699	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	1.55389221556886	2.41458101760551	4.58601330671989	21.0315180494119	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
65	female	-0.446107784431138	0.199012155330059	-1.80598669328011	3.26158793630481	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	1.05389221556886	1.11068880203664	0.436013306719895	0.190107603636817	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	1.55389221556886	2.41458101760551	3.96601330671989	15.7292615490793	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
67	male	-0.946107784431138	0.895119939761196	-2.41698669328011	5.8418246754931	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
68	female	-1.44610778443114	2.09122772419233	-2.58598669328011	6.68732717782177	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L068_ses-wave1_con_0006.nii \
70	male	-1.94610778443114	3.78733550862347	-2.44198669328011	5.9632990101571	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	-1.44610778443114	2.09122772419233	0.772124417830995	0.596176116610852	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	1.55389221556886	2.41458101760551	3.9160133067199	15.3351602184073	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-1.44610778443114	2.09122772419233	-1.80298669328011	3.25076101614513	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	1.05389221556886	1.11068880203664	1.53323552894209	2.35081118721035	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
72	female	0.553892215568862	0.306796586467783	-1.89198669328011	3.57961364754899	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	1.55389221556886	2.41458101760551	0.267013306719894	0.0712961059654924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
72	female	2.05389221556886	4.21847323317437	3.53901330671989	12.5246151851405	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave3_con_0006.nii \
73	male	-1.44610778443114	2.09122772419233	-2.23898669328011	5.01306141268538	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	0.0538922155688621	0.00290437089892071	0.750013306719895	0.562519960256911	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	1.05389221556886	1.11068880203664	3.68901330671989	13.6088191771565	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-1.44610778443114	2.09122772419233	-1.85598669328011	3.44468660563283	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	1.55389221556886	2.41458101760551	3.9860133067199	15.8883020813481	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-0.946107784431138	0.895119939761196	-1.78598669328011	3.18974846857361	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-0.946107784431138	0.895119939761196	-2.02498669328011	4.1005711079615	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	0.553892215568862	0.306796586467783	0.805013306719895	0.648046423996099	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
77	female	1.05389221556886	1.11068880203664	-1.88598669328011	3.55694580722963	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
78	male	-1.94610778443114	3.78733550862347	-1.87498669328011	3.51557509997746	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	0.553892215568862	0.306796586467783	0.847013306719894	0.71743154176057	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	1.55389221556886	2.41458101760551	4.95601330671989	24.5620678963847	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-0.446107784431138	0.199012155330059	-2.08098669328011	4.33050561760887	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
80	female	-0.446107784431138	0.199012155330059	-1.84498669328011	3.40397589838066	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	1.55389221556886	2.41458101760551	0.861013306719894	0.741343914348726	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	2.05389221556886	4.21847323317437	3.9082133067199	15.2741312508225	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
81	male	-0.946107784431138	0.895119939761196	-2.10798669328011	4.44360789904599	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-1.44610778443114	2.09122772419233	0.0140133067198942	0.000196372765225832	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
82	female	-1.44610778443114	2.09122772419233	-2.46098669328011	6.05645550450175	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
83	female	-1.44610778443114	2.09122772419233	-2.56998669328011	6.60483160363681	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	1.05389221556886	1.11068880203664	0.702679973386594	0.493759144998585	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
84	male	-0.946107784431138	0.895119939761196	0.647124417830995	0.418770012153104	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	2.05389221556886	4.21847323317437	4.26601330671989	18.1988695331112	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
85	female	-0.946107784431138	0.895119939761196	-2.24198669328011	5.02650433284506	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
86	male	-0.946107784431138	0.895119939761196	-1.91098669328011	3.65187014189364	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	0.553892215568862	0.306796586467783	0.811013306719895	0.657742583676738	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
87	male	-1.94610778443114	3.78733550862347	-2.16698669328011	4.69583132885305	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	0.0538922155688621	0.00290437089892071	3.93041330671989	15.4481487616408	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-1.44610778443114	2.09122772419233	-2.19498669328011	4.81796658367673	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	0.553892215568862	0.306796586467783	0.938791084497694	0.881328700332357	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-1.94610778443114	3.78733550862347	-2.15798669328011	4.65690656837401	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	-1.44610778443114	2.09122772419233	0.839013306719893	0.70394332885305	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	0.553892215568862	0.306796586467783	4.18601330671989	17.522707404036	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-1.94610778443114	3.78733550862347	-2.47798669328011	6.14041805207328	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	-1.94610778443114	3.78733550862347	0.0440133067198936	0.00193717116841943	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	0.553892215568862	0.306796586467783	3.35801330671989	11.2762533681079	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
91	female	-1.44610778443114	2.09122772419233	-2.28298669328011	5.21202824169403	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-1.94610778443114	3.78733550862347	-2.52498669328011	6.3755578012416	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
93	male	-1.94610778443114	3.78733550862347	-2.63898669328011	6.96425076730947	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
94	female	-0.946107784431138	0.895119939761196	-1.98098669328011	3.92430827895285	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	0.553892215568862	0.306796586467783	0.639013306719894	0.408338006165094	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	2.05389221556886	4.21847323317437	3.59431330671989	12.9190881468637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-1.94610778443114	3.78733550862347	-2.59998669328011	6.75993080523362	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-1.44610778443114	2.09122772419233	-2.59198669328011	6.71839501814114	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	1.05389221556886	1.11068880203664	0.522013306719893	0.272497892392637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	2.05389221556886	4.21847323317437	3.99601330671989	15.9681223474825	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii \
97	male	-1.44610778443114	2.09122772419233	-2.49198669328011	6.20999767948512	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii