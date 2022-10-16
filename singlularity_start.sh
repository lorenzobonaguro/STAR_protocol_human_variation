#!/bin/bash

#this script allows to start an R-studio server singularity container on the sdflex02

#create temporary file variable
export WORKSPACE=/tmp/bonagurol/workspace_gtex

#create variable for the project directory
export PROJECT_DIR=/home/bonagurol/singlularity_scripts

#create temporary folders
[ -d $WORKSPACE ] || mkdir -p $WORKSPACE
cd $WORKSPACE
mkdir run tmp-rstudio-server var-lib-rstudio-server home

#create a database config file
printf 'provider=sqlite\ndirectory=/var/lib/rstudio-server\n' > database.conf

#create a secure cookie key file
cd tmp-rstudio-server
uuidgen > secure-cookie-key

#navigate to the project folder you want to work in
cd $PROJECT_DIR

#prepare to load the container

PASSWORD='gtex' singularity exec --home $WORKSPACE/home:/home --bind $WORKSPACE/run:/run,\
$WORKSPACE/var-lib-rstudio-server:/var/lib/rstudio-server,\
$WORKSPACE/tmp-rstudio-server:/tmp/rstudio-server,\
$WORKSPACE/database.conf:/etc/rstudio/database.conf,\
/home/bonagurol:/data/dzne_home \
$HOME/docker_images/huva_docker_015.sif rserver \
--www-address=$(hostname -i) --www-port=8755 \
--auth-none=0 --auth-pam-helper-path=pam-helper --server-data-dir=/var/run/rstudio-server --server-user=bonagurol &
