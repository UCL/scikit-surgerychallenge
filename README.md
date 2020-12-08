# scikit-surgerychallenge
This repo describes the procedure of how to download, execute and evaluate the results submitted using docker.   
We will assume that the python application is containerize using the [scikit-surgerydocker](https://github.com/UCL/scikit-surgerydocker) guidelines.

Shared docker image can be downloaded, executed and evalated in two common ways.   


## Docker image shared from Cloud drive

This section shows how to download and execute docker image when shared in a cloud drive like google drive, drop-box and one-drive etc.
```
git clone git@github.com:UCL/scikit-surgerychallenge.git
cd scikit-surgerychallange
```
Now run the `shared_using_cloud_drive.sh` script with `URL` as parameter.
```
URL='https://liveuclac-my.sharepoint.com/:u:/g/personal/rmapaah_ucl_ac_uk/EeSOeqYuZcBNn-2seEy_ofkBZpTRxFPumcuoF2gFjrZS2w?e=PpKgvA'

bash shared_using_cloud_drive.sh $URL 
```



## Docker image shared from Docker registry
