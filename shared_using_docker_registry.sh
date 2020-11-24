#!/bin/bash

# The script will get 1 parameter.
# The Image Name

# To get the image name.
IMAGENAME=$1
echo "The image name is $IMAGENAME"

# Assign the command into variable.
CONTAINERID=`docker run -dit -v $PWD/input:/input:ro -v $PWD/output $IMAGENAME`

# This command will pull the image and create a container and run the python application.
# Run the container and run the application inside it.
docker exec $CONTAINERID python app.py

# After analysis copy the results from inside the container to the output folder.
docker cp $CONTAINERID:/output $PWD/output

# After copying the data, stop the running container.
docker stop $CONTAINERID

# Finally remove the stopped container.
docker rm -v $CONTAINERID