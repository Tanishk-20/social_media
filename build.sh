docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID tanishk2/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID tanishk2/$JOB_NAME:latest

docker push tanishk2/$JOB_NAME:$BUILD_ID

docker push tanishk2/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID tanishk2/$JOB_NAME:$BUILD_ID tanishk2/$JOB_NAME:latest
