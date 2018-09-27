FROM java:8
EXPOSE 8761
ADD /target/eurek.jar eurek.jar
ENTRYPOINT ["java", "-jar","eurek.jar"]