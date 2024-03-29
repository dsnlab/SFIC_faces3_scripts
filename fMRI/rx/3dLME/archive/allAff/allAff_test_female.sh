#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_test_female
#SBATCH --output=output/allAff_test_female.log
#SBATCH --error=output/allAff_test_female_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

module load prl afni

cd /projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/allAff_test_female/

3dLME -prefix allAff_test_female \
-jobs 8 \
-model  "test_c+test_c2" \
-ranEff "~1" \
-SS_type 3 \
-qVars "test_c,test_c2" \
-qVarCenters "0,0" \
-resid	allAff_test_female_residuals	\
-dataTable \
Subj	gender	test_c	test_c2	age_c	age_c2	InputFile \
01	female	-20.6247913043478	425.382016347902	-2.0434134057971	4.1755383469913	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave1_con_0006.nii \
01	female	-28.4482913043478	809.305278137032	1.0375865942029	1.07658594046957	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L001_ses-wave2_con_0006.nii \
03	female	-22.8132913043478	520.446260137032	-1.9184134057971	3.68030999554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L003_ses-wave1_con_0006.nii \
04	female	-27.4832913043478	755.331300919641	-2.7434134057971	7.52631711510725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L004_ses-wave1_con_0006.nii \
06	female	-14.6702913043478	215.217446954423	-2.0624134057971	4.25354905641159	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L006_ses-wave1_con_0006.nii \
07	female	-18.7802913043478	352.699341476163	-2.1374134057971	4.56853606728116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave1_con_0006.nii \
07	female	-15.0667913043478	227.008200208771	0.862586594202899	0.744055632498556	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L007_ses-wave2_con_0006.nii \
10	female	-15.3952913043478	237.014994345728	-2.1094134057971	4.44962491655652	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L010_ses-wave1_con_0006.nii \
16	female	-15.3942913043478	236.984204763119	-1.9654134057971	3.86284985568696	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave1_con_0006.nii \
16	female	-8.08229130434783	65.3234327283365	0.1205865942029	0.0145411267014548	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave2_con_0006.nii \
16	female	2.75320869565218	7.58015812181476	4.1955865942029	17.6029468694551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L016_ses-wave3_con_0006.nii \
19	female	-27.2052913043478	740.127874954423	-2.1904134057971	4.79791088829565	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave1_con_0006.nii \
19	female	5.21270869565218	27.1723319457278	0.5845865942029	0.341741486121746	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave2_con_0006.nii \
19	female	19.3942086956522	376.13533093051	4.0625865942029	16.5046098353971	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L019_ses-wave3_con_0006.nii \
20	female	-25.7847913043478	664.855462608771	-2.4544134057971	6.02414516655653	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L020_ses-wave1_con_0006.nii \
22	female	-22.4187913043478	502.602203547902	-2.6764134057971	7.16318871873044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave1_con_0006.nii \
22	female	-6.52679130434782	42.5990047305104	0.1515865942029	0.0229784955420347	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave2_con_0006.nii \
22	female	4.81870869565218	23.2199534935539	3.4655865942029	12.0102904419188	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L022_ses-wave3_con_0006.nii \
23	female	-25.0912913043478	629.572899319641	-2.7544134057971	7.58679321003478	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave1_con_0006.nii \
23	female	-14.1107913043478	199.114431234858	0.3765865942029	0.14181746293334	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave2_con_0006.nii \
23	female	20.1592086956522	406.393695234858	3.4535865942029	11.927260363658	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L023_ses-wave3_con_0006.nii \
24	female	-23.5957913043478	556.761367278336	-2.5874134057971	6.69470813249855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave1_con_0006.nii \
24	female	-8.84529130434782	78.2391782587712	1.2345865942029	1.52420405858551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave2_con_0006.nii \
24	female	-8.83429130434783	78.0447028500757	3.9735865942029	15.789390421629	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L024_ses-wave3_con_0006.nii \
29	female	-12.4367913043478	154.673777947902	-2.3824134057971	5.67589363612174	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave1_con_0006.nii \
29	female	12.8952086956522	166.286407304423	0.4595865942029	0.211219837571021	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave2_con_0006.nii \
29	female	18.2917086956522	334.586607006597	3.8317865942029	14.6825885035131	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L029_ses-wave3_con_0006.nii \
31	female	-20.6557913043478	426.661714408771	-2.4794134057971	6.14749083684637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L031_ses-wave1_con_0006.nii \
32	female	-26.3912913043478	696.500256710945	-2.9214134057971	8.53465628757101	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave1_con_0006.nii \
32	female	-20.8937913043478	436.550515069641	0.7262532608696	0.527443798923727	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave2_con_0006.nii \
32	female	-5.91879130434783	35.0320905044235	2.4285865942029	5.89803284554204	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L032_ses-wave3_con_0006.nii \
35	female	12.5804086956522	158.266682949641	-2.6714134057971	7.13644958467246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave1_con_0006.nii \
35	female	2.00220869565217	4.00883966094517	0.287586594202899	0.0827060491652232	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave2_con_0006.nii \
35	female	10.1772086956522	103.575576834858	3.3285865942029	11.0794887151073	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L035_ses-wave3_con_0006.nii \
36	female	-0.572891304347827	0.328204446597355	-2.0684134057971	4.27833401728116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L036_ses-wave1_con_0006.nii \
39	female	-6.37009130434782	40.5780632257278	-1.9684134057971	3.87465133612174	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L039_ses-wave1_con_0006.nii \
41	female	-27.2070913043478	740.225817243119	-2.7464134057971	7.54278659554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave1_con_0006.nii \
41	female	22.1927086956522	492.516319250076	0.984586594202899	0.969410761484063	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave2_con_0006.nii \
41	female	-7.71279130434782	59.4871497044234	4.2175865942029	17.7880366796	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L041_ses-wave3_con_0006.nii \
42	female	-17.4998913043478	306.246195663989	-2.1934134057971	4.81106236873044	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave1_con_0006.nii \
42	female	-18.0172913043478	324.622785945728	0.553586594202899	0.306458117281166	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave2_con_0006.nii \
42	female	10.2387086956522	104.831155754423	3.9875865942029	15.9008468462667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L042_ses-wave3_con_0006.nii \
45	female	-13.2235913043478	174.863366984423	-2.6934134057971	7.25447577452754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave1_con_0006.nii \
45	female	-16.2632913043478	264.494644050076	0.3375865942029	0.113964708585514	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave2_con_0006.nii \
45	female	78.9927086956522	6239.84802707616	3.5785865942029	12.8062820122087	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L045_ses-wave3_con_0006.nii \
46	female	-1.77889130434782	3.1644542726843	-2.5074134057971	6.28712198757102	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave1_con_0006.nii \
46	female	-10.2517913043478	105.099224947902	0.654031038647299	0.427756599514064	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave2_con_0006.nii \
46	female	7.10170869565217	50.4342663979017	3.6765865942029	13.5172889846725	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L046_ses-wave3_con_0006.nii \
48	female	-18.9931913043478	360.741315923554	-2.7074134057971	7.33008734988986	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L048_ses-wave1_con_0006.nii \
49	female	-5.66319130434783	32.0717357496408	-2.3464134057971	5.50565587090435	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L049_ses-wave1_con_0006.nii \
51	female	-2.04599130434783	4.18608041746693	-2.4794134057971	6.14749083684637	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave1_con_0006.nii \
51	female	64.7272086956522	4189.61154553051	4.5345865942029	20.5624755803247	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L051_ses-wave3_con_0006.nii \
54	female	-17.9395913043478	321.828936167032	-2.5014134057971	6.25706902670145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave1_con_0006.nii \
54	female	1.96420869565218	3.85811580007562	0.781586594202899	0.610877604237687	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L054_ses-wave2_con_0006.nii \
56	female	-29.4167913043478	865.347610643554	-2.3874134057971	5.69974277017971	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L056_ses-wave1_con_0006.nii \
57	female	-10.6156913043478	112.692901869206	-2.5044134057971	6.27208650713623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave1_con_0006.nii \
57	female	-10.0487913043478	100.978206678336	0.967919927536199	0.936868986121681	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave2_con_0006.nii \
57	female	27.6847086956522	766.443095563119	4.8045865942029	23.0840523411942	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L057_ses-wave3_con_0006.nii \
58	female	-1.57589130434783	2.4834334031191	-1.9624134057971	3.85106637525218	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave1_con_0006.nii \
58	female	-4.15779130434782	17.2872285305104	0.551586594202899	0.304247770904353	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave2_con_0006.nii \
58	female	47.4007086956522	2246.82718485008	4.6845865942029	21.9453515585855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L058_ses-wave3_con_0006.nii \
59	female	1.58130869565218	2.50053719094519	-2.6214134057971	6.87180824409276	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave1_con_0006.nii \
59	female	39.9847086956522	1598.77692947616	0.920697705314	0.847684264570465	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave2_con_0006.nii \
59	female	47.0787086956522	2216.40481245008	3.9945865942029	15.9567220585855	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L059_ses-wave3_con_0006.nii \
60	female	-10.5686913043478	111.697235886597	-2.6514134057971	7.02999304844058	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave1_con_0006.nii \
60	female	39.2457086956522	1540.22565102399	0.4925865942029	0.242641552788412	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave2_con_0006.nii \
60	female	12.8212086956522	164.383392417467	4.9545865942029	24.5479283194551	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L060_ses-wave3_con_0006.nii \
65	female	8.43360869565218	71.12575563138	-1.9074134057971	3.6382259006145	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave1_con_0006.nii \
65	female	-3.82529130434783	14.6328535631191	0.3345865942029	0.111948189020296	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave2_con_0006.nii \
65	female	43.0307086956522	1851.64189085008	3.8645865942029	14.9350295440928	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L065_ses-wave3_con_0006.nii \
72	female	16.0582086956522	257.866066513119	-1.9934134057971	3.9736970064116	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave1_con_0006.nii \
72	female	42.6077086956522	1815.41684029355	0.1655865942029	0.0274189201797157	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L072_ses-wave2_con_0006.nii \
77	female	-13.2592913043478	175.808805893554	-1.9874134057971	3.94981204554203	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L077_ses-wave1_con_0006.nii \
80	female	-24.2632913043478	588.707304919641	-1.9464134057971	3.78852514626667	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave1_con_0006.nii \
80	female	7.06720869565218	49.9454387479017	0.759586594202899	0.57697179409276	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave2_con_0006.nii \
80	female	30.7492086956522	945.513835408771	3.8067865942029	14.4916241738029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L080_ses-wave3_con_0006.nii \
82	female	-14.9652913043478	223.959943823989	-2.5624134057971	6.56596246220869	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave1_con_0006.nii \
82	female	42.6822086956522	1821.77093913921	0.345697705313999	0.119506903459364	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave2_con_0006.nii \
82	female	36.3587086956522	1321.95569801529	4.5945865942029	21.110225971629	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L082_ses-wave3_con_0006.nii \
83	female	-22.6347913043478	512.33377739138	-2.6714134057971	7.13644958467246	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave1_con_0006.nii \
83	female	34.3162086956522	1177.60217924355	0.6012532608696	0.361505483706327	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L083_ses-wave2_con_0006.nii \
85	female	2.50070869565217	6.25354398051039	-2.3434134057971	5.49158639046957	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L085_ses-wave1_con_0006.nii \
91	female	-23.0307913043478	530.417348104423	-2.3844134057971	5.68542728974493	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L091_ses-wave1_con_0006.nii \
92	female	-21.1427913043478	447.017624139206	-2.6264134057971	6.89804737815072	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave1_con_0006.nii \
92	female	18.7237086956522	350.577267319641	0.259586594202899	0.0673851998898605	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L092_ses-wave2_con_0006.nii \
94	female	-21.1427913043478	447.017624139206	-2.0824134057971	4.33644559264348	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave1_con_0006.nii \
94	female	-11.1717913043478	124.808920947902	0.537586594202899	0.288999346266673	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave2_con_0006.nii \
94	female	-4.22079130434783	17.8150792348582	3.4928865942029	12.2002567599623	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L094_ses-wave3_con_0006.nii \
95	female	-28.5222913043478	813.521101250076	-2.7014134057971	7.29763438902029	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L095_ses-wave1_con_0006.nii \
96	female	-13.4552913043478	181.044864084858	-2.6934134057971	7.25447577452754	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave1_con_0006.nii \
96	female	56.7707086956522	3222.9133658066	0.420586594202899	0.176893083223194	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave2_con_0006.nii \
96	female	18.4282086956522	339.59887573051	3.8945865942029	15.1678047397449	/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models/sub-L096_ses-wave3_con_0006.nii
