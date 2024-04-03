FROM openjdk:17

# Set the working directory
WORKDIR /wrk

# Copy the JAR file built in the previous stage
COPY target/demo.jar /wrk/demo.jar

# Expose the port the application runs on
EXPOSE 8082

# Define the command to run the application
CMD ["java", "-jar", "demo.jar"]
