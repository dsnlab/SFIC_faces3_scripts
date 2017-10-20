#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_logtest_age_female
#SBATCH --output=output/allAff_logtest_age_female.log
#SBATCH --error=output/allAff_logtest_age_female_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_logtest_female/

3dLME -prefix allAff_logtest_age_female \
-jobs 8 \
-model  "logtest_c+logtest_c2+age_c" \
-ranEff "~1" \
-SS_type 3 \
-qVars "logtest_c,logtest_c2,age_c" \
-qVarCenters "0,0,0" \
-resid	allAff_logtest_age_female_residuals	\
-dataTable \
Subj	gender	logtest_c	logtest_c2	age_c	age_c2	InputFile \
01	female	-0.540324263638051	0.291950309876002	-2.0434134057971	4.1755383469913	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	-1.02232764344301	1.04515381054774	1.0375865942029	1.07658594046957	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
03	female	-0.653476976943701	0.427032159395478	-1.9184134057971	3.68030999554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L003_ses-wave1_con_0006.nii \
04	female	-0.948714549311961	0.900059296076197	-2.7434134057971	7.52631711510725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
06	female	-0.284838843274471	0.0811331666379386	-2.0624134057971	4.25354905641159	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-0.453991401887561	0.206108192987833	-2.1374134057971	4.56853606728116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	-0.299965646985391	0.0899793893713641	0.862586594202899	0.744055632498556	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
10	female	-0.312673871282431	0.0977649497827421	-2.1094134057971	4.44962491655652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
16	female	-0.312634939568651	0.0977406054390938	-1.9654134057971	3.86284985568696	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	-0.0621383957390007	0.00386118022501666	0.1205865942029	0.0145411267014548	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	0.22180927033259	0.0491993524054758	4.1955865942029	17.6029468694551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
19	female	-0.928475806607691	0.862067323455802	-2.1904134057971	4.79791088829565	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave1_con_0006.nii \
19	female	0.276401060840919	0.0763975464339856	0.5845865942029	0.341741486121746	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	0.543629554869149	0.29553309292723	4.0625865942029	16.5046098353971	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-0.83100914531789	0.690576199601971	-2.4544134057971	6.02414516655653	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
22	female	-0.632111130815111	0.399564481700358	-2.6764134057971	7.16318871873044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	-0.0160771838743505	0.000258475841329677	0.1515865942029	0.0229784955420347	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	0.267853722134039	0.0717456164610592	3.4655865942029	12.0102904419188	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-0.786668244813441	0.61884692739786	-2.7544134057971	7.58679321003478	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	-0.263875364475301	0.0696302079769728	0.3765865942029	0.14181746293334	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	0.55620006916254	0.309358516936414	3.4535865942029	11.927260363658	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-0.697257131111601	0.48616750688598	-2.5874134057971	6.69470813249855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	-0.0855321718942208	0.00731575242894253	1.2345865942029	1.52420405858551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	-0.0851909914064408	0.00725750501681227	3.9735865942029	15.789390421629	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
29	female	-0.203656504482251	0.041475971817929	-2.3824134057971	5.67589363612174	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	0.429939001698179	0.184847545181227	0.4595865942029	0.211219837571021	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	0.525230654578259	0.275867240508707	3.8317865942029	14.6825885035131	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
31	female	-0.541840860880871	0.293591518520123	-2.4794134057971	6.14749083684637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-0.87146754878012	0.759455688576832	-2.9214134057971	8.53465628757101	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	-0.553561668752651	0.306430521112219	0.7262532608696	0.527443798923727	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	0.00136545239365926	0.00000186446023934981	2.4285865942029	5.89803284554204	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
35	female	0.424089706146949	0.179852078859806	-2.6714134057971	7.13644958467246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	0.204527986119649	0.0418316971061594	0.287586594202899	0.0827060491652232	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	0.378271201770599	0.143089102088973	3.3285865942029	11.0794887151073	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	0.142896515191879	0.020419414053983	-2.0684134057971	4.27833401728116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
39	female	-0.0115525048577805	0.000133460368489042	-1.9684134057971	3.87465133612174	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
41	female	-0.92860554007766	0.862308249062924	-2.7464134057971	7.54278659554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	0.588866098478209	0.346763281936948	0.984586594202899	0.969410761484063	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	-0.0510031447323005	0.00260132077258399	4.2175865942029	17.7880366796	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-0.398163439307161	0.158534124400907	-2.1934134057971	4.81106236873044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	-0.420349220332631	0.17669346703425	0.553586594202899	0.306458117281166	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	0.379470295282699	0.143997705001939	3.9875865942029	15.9008468462667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-0.23150904083856	0.0535964359899903	-2.6934134057971	7.25447577452754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	-0.347051452145201	0.120444710436093	0.3375865942029	0.113964708585514	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	1.22950355365354	1.51167898844668	3.5785865942029	12.8062820122087	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	0.112672362135619	0.0126950611892201	-2.5074134057971	6.28712198757102	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	-0.130144696193961	0.0169376419474183	0.654031038647299	0.427756599514064	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	0.316395382964129	0.100106038361018	3.6765865942029	13.5172889846725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
48	female	-0.463584136543721	0.214910251654987	-2.7074134057971	7.33008734988986	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	0.00860837010341919	0.0000741040358374414	-2.3464134057971	5.50565587090435	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
51	female	0.105853054325169	0.0112048691099673	-2.4794134057971	6.14749083684637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	1.10302562930537	1.21666553890451	4.5345865942029	20.5624755803247	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave3_con_0006.nii \
54	female	-0.416985922951901	0.173877259940048	-2.5014134057971	6.25706902670145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	0.203645578482979	0.0414715216356672	0.781586594202899	0.610877604237687	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
56	female	-1.10209332636064	1.21460970000866	-2.3874134057971	5.69974277017971	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L056_ses-wave1_con_0006.nii \
57	female	-0.14201873547659	0.0201693212263698	-2.5044134057971	6.27208650713623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	-0.123581571489271	0.0152724048117577	0.967919927536199	0.936868986121681	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	0.67210166405414	0.451720646824344	4.8045865942029	23.0840523411942	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	0.117824213219399	0.0138825452207704	-1.9624134057971	3.85106637525218	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	0.0502341614779596	0.00252347097939372	0.551586594202899	0.304247770904353	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave2_con_0006.nii \
58	female	0.924192988987109	0.854132680892927	4.6845865942029	21.9453515585855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	0.194710436646309	0.0379121541389965	-2.6214134057971	6.87180824409276	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	0.836656968246039	0.699994882514653	0.920697705314	0.847684264570465	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	0.920547172255229	0.847407096347099	3.9945865942029	15.9567220585855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-0.140477175375191	0.019733836801392	-2.6514134057971	7.02999304844058	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	0.82749907733694	0.684754722993486	0.4925865942029	0.242641552788412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
60	female	0.428567081350999	0.183669743217714	4.9545865942029	24.5479283194551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave3_con_0006.nii \
65	female	0.343663034732769	0.118104281441737	-1.9074134057971	3.6382259006145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	0.0591990833059994	0.00350453146427066	0.3345865942029	0.111948189020296	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	0.873542797977469	0.763077019898305	3.8645865942029	14.9350295440928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
72	female	0.486886394147499	0.237058360805954	-1.9934134057971	3.9736970064116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	0.868501070968889	0.754294110274107	0.1655865942029	0.0274189201797157	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
77	female	-0.232791398540601	0.0541918352344888	-1.9874134057971	3.94981204554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
80	female	-0.736180490709321	0.541961714901016	-1.9464134057971	3.78852514626667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	0.315679098890549	0.0996532934763492	0.759586594202899	0.57697179409276	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	0.715701714459769	0.512228944080653	3.8067865942029	14.4916241738029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
82	female	-0.296071493837341	0.0876583294630745	-2.5624134057971	6.56596246220869	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
82	female	0.869390880912849	0.75584050381442	0.345697705313999	0.119506903459364	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave2_con_0006.nii \
82	female	0.790896484708969	0.625517249525005	4.5945865942029	21.110225971629	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave3_con_0006.nii \
83	female	-0.643752956813411	0.414417869406009	-2.6714134057971	7.13644958467246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	0.764166984797009	0.583951180653752	0.6012532608696	0.361505483706327	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
85	female	0.216032246755669	0.0466699316383025	-2.3434134057971	5.49158639046957	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
91	female	-0.665454816848051	0.442830113266272	-2.3844134057971	5.68542728974493	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-0.56597304302643	0.320325485432598	-2.6264134057971	6.89804737815072	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
92	female	0.532480407334559	0.283535384195178	0.259586594202899	0.0673851998898605	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave2_con_0006.nii \
94	female	-0.56597304302643	0.320325485432598	-2.0824134057971	4.33644559264348	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	-0.16044106317824	0.0257413347537641	0.537586594202899	0.288999346266673	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	0.0485264506147391	0.00235481640926472	3.4928865942029	12.2002567599623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-1.02820277447042	1.05720094542867	-2.7014134057971	7.29763438902029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-0.239861242405311	0.0575334156082193	-2.6934134057971	7.25447577452754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	1.02485052168375	1.05031859179545	0.420586594202899	0.176893083223194	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	0.527527059990129	0.278284799021829	3.8945865942029	15.1678047397449	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii 
