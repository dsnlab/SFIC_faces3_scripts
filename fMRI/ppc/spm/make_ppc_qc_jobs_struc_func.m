% script to create ppc qc jobs
% 5.11.2017

% define paths
jobDir = '/Volumes/psych-cog/dsnlab/SFIC/SFIC_faces3_scripts/fMRI/ppc/spm/QC_alignment_struc_func/';

addpath(jobDir)

% loop through subjects and replace subject ID, wave, reo parameters
for subCount = 1:97;
	if subCount < 10
		subID = ['sub-L00',num2str(subCount)];
	else
		subID = ['sub-L0',num2str(subCount)];
	end
	for tCount = 1:3
        fn = ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount))'];
        if exist(fn, 'dir')
        matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_cd.dir = {'/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/ppc_QC'};
        matlabbatch{2}.spm.util.checkreg.data = {
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/structurals/hires.nii,1']
                                                 ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/subjects/',subID,'/ses-wave',(num2str(tCount)),'/facesOB/b_facesOB_0000.nii,1']
                                                 };
        matlabbatch{3}.spm.util.print.fname = ['alignment_',subID,'_t',(num2str(tCount))];
        matlabbatch{3}.spm.util.print.fig.figname = 'Graphics';
        matlabbatch{3}.spm.util.print.opts = 'pdf';

		saveJob = [jobDir,[subID,'_t',num2str(tCount),'_qc.mat']];
		save(saveJob,'matlabbatch');
		clear matlabbatch; 
        end
	end
end
