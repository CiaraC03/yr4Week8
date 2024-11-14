# Use an official JDK as a parent
FROM openjdk:19-jdk

# Set the working directory in the container
WORKDIR /app

# copy the build application JAR file from your local machine to the conatiner
COPY  target/*.jar app.jar

# Make port 8000 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]