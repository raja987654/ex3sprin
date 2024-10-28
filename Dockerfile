FROM adoptopenjdk:17-jre-hotspot

# Create a volume for temporary files
VOLUME /tmp

# Add the application JAR file
ADD target/*.jar app.jar

# Specify the command to run the application
CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]

# Expose the application port
EXPOSE 8088
