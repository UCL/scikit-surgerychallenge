#!/bin/bash

# The script will get 2 parameters.
# First Download url
# Second TEAM name.


# To get the URL and convert into downloadable.
URL=$1
URL=${URL::-6}
URL=$URL"download=1"
echo "The converted url is $URL"

# To get the team name.
TEAM=$1
echo "The image is from the $TEAM"


# To store the image name by the name of the team. 
FILENAME=$TEAM.tar



# ownload the tar file and change file name to TEAM.tar
wget -O $FILENAME $URL

echo "Loading the imported image locally"
# Load the downloaded image into local docker
docker load < $FILENAME

# Assign the command into variable.
CONTAINERID=`docker run -dit -v $PWD/input:/input:ro -v $PWD/output weiss_seg/$TEAM`

# Run the container and run the application inside it.
docker exec $CONTAINERID python segmentation.py

# After analysis copy the results from inside the container to the output folder.
docker cp $CONTAINERID:/output $PWD/output

# After copying the data, stop the running container.
docker stop $CONTAINERID

# Finally remove the stopped container.
docker rm -v $CONTAINERID