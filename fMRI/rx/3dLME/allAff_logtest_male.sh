#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_logtest_male
#SBATCH --output=output/allAff_logtest_male.log
#SBATCH --error=output/allAff_logtest_male_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_logtest_male/

3dLME -prefix allAff_logtest_male \
-jobs 8 \
-model  "logtest_c+logtest_c2" \
-ranEff "~1" \
-SS_type 3 \
-qVars "logtest_c,logtest_c2" \
-qVarCenters "0,0" \
-resid	allAff_logtest_male_residuals	\
-dataTable \
Subj	gender	logtest_c	logtest_c2	age_c	age_c2	InputFile \
05	male	-1.04840474572613	1.09915251086108	-2.54780068587106	6.49128833492503	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave1_con_0006.nii \
05	male	-0.00922374096711298	0.0000850773974283983	0.513199314128943	0.263373536022418	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave2_con_0006.nii \
05	male	1.2038734927909	1.44931138664455	4.19919931412895	17.633274879781	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L005_ses-wave3_con_0006.nii \
08	male	-0.676858904713153	0.458137976889489	1.10519931412894	1.22146552395109	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L008_ses-wave2_con_0006.nii \
09	male	-1.36549878643599	1.86458693575817	-2.90880068587106	8.46112143012392	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave1_con_0006.nii \
09	male	-1.21544423553515	1.47730468969563	0.202199314128944	0.0408845626342152	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L009_ses-wave2_con_0006.nii \
11	male	-0.096114313772433	0.0092379613119457	0.463199314128945	0.214553604609525	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L011_ses-wave2_con_0006.nii \
14	male	-0.219471059246283	0.0481675458466854	-2.54280068587106	6.46583532806631	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L014_ses-wave1_con_0006.nii \
15	male	-1.00976339577133	1.01962211543965	-2.68980068587106	7.2350277297124	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L015_ses-wave1_con_0006.nii \
17	male	-1.08642915444416	1.18032830762626	-2.03680068587106	4.1485570339648	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave1_con_0006.nii \
17	male	0.315805457253317	0.0997330868309767	0.891199314128944	0.794236217503899	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L017_ses-wave2_con_0006.nii \
18	male	-0.657863356473293	0.432784195790307	-2.64280068587106	6.98439546524052	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave1_con_0006.nii \
18	male	-1.20950433573335	1.46290073815778	0.638199314128943	0.407298364554654	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave2_con_0006.nii \
18	male	0.810175388438797	0.656384160031955	3.99819931412894	15.9855977555012	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L018_ses-wave3_con_0006.nii \
26	male	-0.404737506092923	0.163812448838319	-2.54280068587106	6.46583532806631	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L026_ses-wave1_con_0006.nii \
28	male	-0.0149305242715432	0.00022292055502314	-2.50080068587106	6.25400407045314	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave1_con_0006.nii \
28	male	0.434296734381277	0.188613653494242	0.385199314128943	0.148378511605408	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave2_con_0006.nii \
28	male	1.67675570723881	2.81150970175791	4.09619931412894	16.7788488210704	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L028_ses-wave3_con_0006.nii \
30	male	-0.480184200428043	0.230576866340719	-2.97280068587106	8.83754391791542	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave1_con_0006.nii \
30	male	1.18339235334768	1.40041746196175	0.735421536351144	0.540844836129076	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave2_con_0006.nii \
30	male	1.44877747864827	2.09895618263843	3.78019931412894	14.2899068545409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L030_ses-wave3_con_0006.nii \
33	male	-0.782938143634403	0.612992136757685	-2.89280068587106	8.36829580817605	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave1_con_0006.nii \
33	male	-0.116819298165753	0.0136467484239391	0.266199314128944	0.07086207484272	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave2_con_0006.nii \
33	male	1.02489722568074	1.05041432320807	3.75209931412894	14.0782492630869	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L033_ses-wave3_con_0006.nii \
34	male	0.240414558613567	0.0577991599933564	0.999199314128944	0.998399269355752	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L034_ses-wave2_con_0006.nii \
37	male	0.206909001479677	0.0428113348933171	-2.59480068587106	6.7329905993969	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L037_ses-wave1_con_0006.nii \
38	male	-0.784170034989553	0.614922643775517	-1.88980068587106	3.57134663231872	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave1_con_0006.nii \
38	male	0.362665237827107	0.131526074728192	0.819199314128944	0.671087516269333	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave2_con_0006.nii \
38	male	1.61858127680948	2.6198053496382	4.78819931412894	22.9268526718249	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L038_ses-wave3_con_0006.nii \
40	male	-0.0492244858929931	0.00242305001142948	-2.63080068587106	6.92111224877962	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave1_con_0006.nii \
40	male	0.782670318109537	0.612572826849684	0.171199314128943	0.0293092051582205	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L040_ses-wave2_con_0006.nii \
47	male	-0.465564363232463	0.216750176312049	-1.99280068587106	3.97125457360815	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L047_ses-wave1_con_0006.nii \
52	male	-0.221131932877083	0.0488993317379547	-2.62280068587106	6.87908343780568	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L052_ses-wave1_con_0006.nii \
53	male	-0.416510113344763	0.173480674518467	-2.62880068587106	6.91059304603613	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L053_ses-wave1_con_0006.nii \
55	male	-0.920676183201973	0.847644634315353	-2.64780068587106	7.01084847209924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave1_con_0006.nii \
55	male	1.03153034868057	1.06405486024905	0.949310425240045	0.901190283469434	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave2_con_0006.nii \
55	male	1.28832300781441	1.65977617246396	4.67819931412894	21.8855488227165	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L055_ses-wave3_con_0006.nii \
61	male	-0.297383735293443	0.0884370860170806	-2.47280068587106	6.11474323204436	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L061_ses-wave1_con_0006.nii \
62	male	-0.455220538059343	0.207225738271038	-1.95080068587106	3.80562331599499	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L062_ses-wave1_con_0006.nii \
63	male	-0.079234513474383	0.00627810812552219	-2.61180068587106	6.82150282271652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L063_ses-wave1_con_0006.nii \
64	male	-0.440654292361283	0.194176205376423	-2.64480068587106	6.99497066798401	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave1_con_0006.nii \
64	male	1.37880126923753	1.90109294005101	0.888199314128943	0.788898021619126	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave2_con_0006.nii \
64	male	1.16775843292138	1.36365975765899	4.48819931412894	20.1439330833475	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L064_ses-wave3_con_0006.nii \
67	male	-0.442887960039503	0.196149745147953	-2.51480068587106	6.32422248965754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L067_ses-wave1_con_0006.nii \
70	male	-1.09241729644899	1.19337554958093	-2.53980068587106	6.45058752395108	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave1_con_0006.nii \
70	male	0.457055944792767	0.208900136670409	0.674310425240044	0.454694549587409	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave2_con_0006.nii \
70	male	1.29377888624799	1.67386380650108	3.81819931412894	14.5786460024147	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L070_ses-wave3_con_0006.nii \
71	male	-1.37484526983705	1.89019951599332	-1.90080068587106	3.61304324740788	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave1_con_0006.nii \
71	male	0.787054668815977	0.619455051705028	1.43542153635114	2.06043498702068	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L071_ses-wave2_con_0006.nii \
73	male	-0.555710657225733	0.308814334554256	-2.33680068587106	5.46063744548744	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave1_con_0006.nii \
73	male	0.339333473633137	0.115147206327931	0.652199314128945	0.425363945350266	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave2_con_0006.nii \
73	male	0.919333426659337	0.845173949373199	3.59119931412894	12.8967125138002	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L073_ses-wave3_con_0006.nii \
74	male	-1.85247918189691	3.43167911936146	-1.95380068587106	3.81733712011021	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave1_con_0006.nii \
74	male	1.08920679767494	1.18637144810129	3.88819931412895	15.1180939063928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L074_ses-wave3_con_0006.nii \
75	male	-0.884413102077763	0.782186535126812	-1.88380068587106	3.54870502408826	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L075_ses-wave1_con_0006.nii \
76	male	-0.780061434373963	0.608495841397564	-2.12280068587106	4.50628275193462	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave1_con_0006.nii \
76	male	0.920284419217267	0.846923412254062	0.707199314128944	0.500130869904449	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave2_con_0006.nii \
76	male	1.26716085168909	1.60569662405341	5.11819931412894	26.19596421915	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L076_ses-wave3_con_0006.nii \
78	male	-0.461388991821983	0.212879801774506	-1.97280068587106	3.89194254617331	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave1_con_0006.nii \
78	male	0.622011301830907	0.386898059605379	0.749199314128944	0.56129961229128	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave2_con_0006.nii \
78	male	1.07899484024987	1.16422986528584	4.85819931412894	23.6021005758029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L078_ses-wave3_con_0006.nii \
79	male	-0.958344997226683	0.918425133709411	-2.17880068587106	4.74717242875219	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L079_ses-wave1_con_0006.nii \
81	male	-1.04101495858234	1.0837121439922	-2.20580068587106	4.86555666578922	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave1_con_0006.nii \
81	male	-0.549862058199813	0.302348283047735	-0.083800685871056	0.00702255495245941	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L081_ses-wave2_con_0006.nii \
84	male	0.960421969740797	0.922410359960793	0.549310425240044	0.301741943277398	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave2_con_0006.nii \
84	male	1.14390223156952	1.30851231538972	4.16819931412894	17.373885522305	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L084_ses-wave3_con_0006.nii \
86	male	-0.388556979235233	0.150976526112409	-2.00880068587106	4.03528019555603	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave1_con_0006.nii \
86	male	0.640099286706547	0.40972709684223	0.713199314128945	0.508653261673997	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave2_con_0006.nii \
86	male	1.53013030399715	2.3412987472104	4.94419931412894	24.4451068578331	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L086_ses-wave3_con_0006.nii \
87	male	-0.835563243930783	0.698165934608133	-2.26480068587106	5.12932214672201	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave1_con_0006.nii \
87	male	1.09395174713347	1.19673042505636	3.83259931412894	14.6888175026616	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L087_ses-wave3_con_0006.nii \
88	male	-0.742570294031613	0.551410641578196	-2.29280068587106	5.25693498513078	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave1_con_0006.nii \
88	male	0.244221260701667	0.0596440241787116	0.840977091906744	0.707242469111924	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L088_ses-wave2_con_0006.nii \
89	male	-1.51553554685333	2.29684799377603	-2.25580068587106	5.08863673437633	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave1_con_0006.nii \
89	male	-0.316940632229133	0.100451364357803	0.741199314128943	0.549376423265216	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave2_con_0006.nii \
89	male	0.750191901145897	0.562787888544895	4.08819931412894	16.7133736320444	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L089_ses-wave3_con_0006.nii \
90	male	-0.597003590885813	0.356413287530555	-2.57580068587106	6.63474917333381	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave1_con_0006.nii \
90	male	0.273616492719287	0.0748659850880038	-0.0538006858710567	0.00289451380019612	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave2_con_0006.nii \
90	male	0.807343228265647	0.651803088226396	3.26019931412894	10.6288995678468	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L090_ses-wave3_con_0006.nii \
93	male	-1.86642399079239	3.4835385134054	-2.73680068587106	7.49007799418429	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L093_ses-wave1_con_0006.nii \
97	male	-1.61374424223686	2.60417047935263	-2.58980068587106	6.70706759253819	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L097_ses-wave1_con_0006.nii 
