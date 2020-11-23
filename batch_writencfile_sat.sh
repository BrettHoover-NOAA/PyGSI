#!/bin/bash
#SBATCH -J plot_gsi_diags
#SBATCH -A da-cpu
#SBATCH -q debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH -t 00:30:00
#SBATCH --mail-user=$LOGNAME@noaa.gov

# PyGSIdir=path/to/PyGSI_Directory
PyGSIdir=/scratch1/NCEPDEV/da/$LOGNAME/PyGSI
OUTDIR=/scratch1/NCEPDEV/da/$LOGNAME/PyGSI/ncfiles/radiance

# load environment needed to run python scripts
source $PyGSIdir/modulefiles/modulefile.PyGSI.hera.bash

python create_satNetCDF.py -n 20 -y /scratch1/NCEPDEV/da/Kevin.Dougherty/PyGSI/sat_test_yaml.yaml -o $OUTDIR