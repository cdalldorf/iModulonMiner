#!/bin/bash
# setup proper pathing
source /opt/bifxapps/miniconda3/etc/profile.d/conda.sh
unset $PYTHONPATH
export NXF_HOME=$HOME/.nextflow

# activate my environment
conda activate modulome

# record time, run nextflow
printf "Start time: "; /bin/date
printf "Job is running on node: "; /bin/hostname
printf "Job running as user: "; /usr/bin/id
printf "Job is running in directory: "; /bin/pwd
echo
nextflow run main.nf -profile local
echo
echo "Science complete!"

conda deactivate