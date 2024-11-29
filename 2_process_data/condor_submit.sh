#!/bin/bash
# setup proper pathing and permissions
source /opt/bifxapps/miniconda3/etc/profile.d/conda.sh
unset $PYTHONPATH

# activate my environment
conda activate modulome
export NXF_HOME=/home/glbrc.org/cdalldorf/.nextflow

# record time, run nextflow
printf "Start time: "; /bin/date
printf "Job is running on node: "; /bin/hostname
printf "Job running as user: "; /usr/bin/id
printf "Job is running in directory: "; /bin/pwd
echo
nextflow run main.nf -profile local -c nextflow.config -resume
echo

# wrap up
echo "Science complete!"
printf "End time: "; /bin/date
conda deactivate
