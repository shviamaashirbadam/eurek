#Welcome to the Eureka wiki!

This repository is about setting up the eureka server in the AWS.

Step 1: Create a Dockerfile 
The docker file can be created as: 
FROM java:8
EXPOSE 8761
ADD /target/eurek.jar eurek.jar
ENTRYPOINT ["java", "-jar","eurek.jar"]

Some of the key thing we need to make sure in the docker file above are:
we need to make sure that the name of the .jar file is correct. 
Step 2:
Once the docker file is created then you may push to the github. 
Once the code is pushed, you can go to the EC2 instance and then you can go to /var/lib/jenkins/workspace/(name of the folder).
Step 3:
Once you are in the working directory, 
Make sure you deleted everything in the target directory, because it will give you unwanted error such as"
-- Invalid or corrupt jar --
Once you are deleted the target dir, then first thing I recommend to do is :
1. mvn clean
2. mvn install 
3. docker build -f Dockerfile -t (name of the docker image) .
4. Once you have docker image built, then 
5. docker run -p 8761:8761 (name of the image)

This will get your container up and ready.... 
Make sure:
You have docker, maven and Oracle-jdk-1.8 installed
Key notes:
Once you install the maven will also install Oracle-jdk-1.7
Make sure that you are setting up the jdk-1.8 as the main one to user.
Its sad that the maven have not defaulted the jdk 1.8 as an default.
Doing this, it will get your eureka server up and ready, and then start to register other services.
 


