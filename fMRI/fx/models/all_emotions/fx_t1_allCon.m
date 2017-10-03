% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'/Volumes/psych-cog/dsnlab/SFIC/SFIC_faces3_scripts/fMRI/fx/models/all_emotions/fx_t1_allCon_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
