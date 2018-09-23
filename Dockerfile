FROM java:8
EXPOSE 8761
EXPOSE 8888
ADD /target/eurek.jar eurek.jar
ENTRYPOINT ["java", "-jar","eurek.jar"]