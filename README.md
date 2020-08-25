# aws-cdk-java

##AWS Cloud Development Kit (AWS CDK) with JAVA and MAVEN

### Docker image info

- Nodejs 12
- npm 6.14
- MAVEN 3.6
- JAVA 11

### How to work with image

Go to directory where your project reside and run the commands in the following fashion:

```
docker run -i --rm \
	--volume=$(pwd):/work \
	-e "AWS_ACCESS_KEY_ID=<YOUR_KEY>" \
	-e "AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_KEY>" \
	-e "AWS_DEFAULT_REGION=<YOUR_REGION>" \
	triphon/aws-cdk-java:mvn-amazoncorretto11-node12 \
	$PUT_COMMAND_HERE
```

Example how to init JAVA project:
```
docker run -i --rm \
	--volume=$(pwd):/work \
	-e "AWS_ACCESS_KEY_ID=<YOUR_KEY>" \
	-e "AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_KEY>" \
	-e "AWS_DEFAULT_REGION=<YOUR_REGION>" \
	triphon/aws-cdk-java:mvn-amazoncorretto11-node12 \
	cdk init app --language java
```

The generated resources are with root ownership and need to adjust the permissions if you want to edit them:

```
docker run -i --rm \
	--volume=$(pwd):/work \
	triphon/aws-cdk-java:mvn-amazoncorretto11-node12 \
	chmod -R a+rw .
```





