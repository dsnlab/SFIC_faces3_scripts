% script to create fx results pdf jobs
% 10.06.2017

% define paths
jobDir = '/Volumes/psych-cog/dsnlab/SFIC/SFIC_faces3_scripts/fMRI/fx/models/all_emotions/results_pdfs/';

addpath(jobDir)

% loop through subjects and replace subject ID, wave, reo parameters
for subCount = 1:97;
    
	if subCount < 10
		subID = ['sub-L00',num2str(subCount)];
	else
		subID = ['sub-L0',num2str(subCount)];
    end
    
	for tCount = 1:3
        
        fn1 = ['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions/',subID,'/ses-wave',(num2str(tCount)),'/SPM.mat'];
        if exist(fn1, 'file')
        matlabbatch{1}.spm.stats.results.spmmat = {['/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions/',subID,'/ses-wave',(num2str(tCount)),'/SPM.mat']};
        matlabbatch{1}.spm.stats.results.conspec.titlestr = '';
        matlabbatch{1}.spm.stats.results.conspec.contrasts = 6;
        matlabbatch{1}.spm.stats.results.conspec.threshdesc = 'none';
        matlabbatch{1}.spm.stats.results.conspec.thresh = 0.005;
        matlabbatch{1}.spm.stats.results.conspec.extent = 20;
        matlabbatch{1}.spm.stats.results.conspec.conjunction = 1;
        matlabbatch{1}.spm.stats.results.conspec.mask.none = 1;
        matlabbatch{1}.spm.stats.results.units = 1;
        matlabbatch{1}.spm.stats.results.print = 'pdf';
        matlabbatch{1}.spm.stats.results.write.none = 1;
        
        saveJob = [jobDir,[subID,'_t',num2str(tCount),'_results_pdf.mat']];
		save(saveJob,'matlabbatch');
		clear matlabbatch; 
        end
	end
end
