# created: 12.07.2019
# updated: 12.07.2019

# .profile used on ekp portal machines
# not for use atm, update and then delete these lines!

# COLORS && FONTS
#LS_COLORS='di=0;35' ; export LS_COLORS

# NOT SURE IF NEEDED BUT DOESNT HURT
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ $TERM = screen.xterm-256color ]; then
	export TERM=xterm
fi


# USEFUL ALIASES
alias home='cd ~'
alias st='cd /storage/9/mneukum/'


# SETTING ENVIRONMENTAL VAR FOR CMSSW
export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch/
export SCRAM_ARCH=slc6_amd64_gcc481
source $VO_CMS_SW_DIR/cmsset_default.sh

# ABOUT CMSSW:
# see /cvmfs/cms.cern.ch/ for versions and architectures
# set VO_CMS_SW_DIR && SCRAM_ARCH 
# for new Version (i.e. dir in ~): cmsrel CMSSW_X_X_X
# use specific Version in ~: cd ~/CMSSW_X_X_X/src  &&  cmsenv  &&  cd ~

# CMSSW_7_1_5: bad/old git but needed for ATGCRooStats
# default is CMSSW_7_1_5
source ~/.cmsenv


#old architecture = bachelor
#export SCRAM_ARCH=slc5_amd64-gcc462

#old default = bachelor
#source $VO_CMS_SW_DIR/cmsset_default.sh
#source /opt/ogs/ekpcluster/common/settings.sh


# ENV VARS

#setting personal python 2.7.15rc1 in /storage/9/mneukum/python/Python-2.7.15rc1
export PATH=/storage/9/mneukum/python/Python-2.7.15rc1/:$PATH
export PYTHONPATH=/storage/9/mneukum/python/Python-2.7.15rc1/:$PYTHONPATH
export LD_LIBRARY_PATH=/storage/9/mneukum/python/Python-2.7.15rc1/lib/:$LD_LIBRARY_PATH

#adding LHAPDF to env vars
export PATH=/storage/9/mneukum/LHAPDF-6.1.4-inst/bin:$PATH
export LD_LIBRARY_PATH=/storage/9/mneukum/LHAPDF-6.1.4-inst/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/storage/9/mneukum/LHAPDF-6.1.4-inst/lib/python2.7/site-packages/:$PYTHONPATH


