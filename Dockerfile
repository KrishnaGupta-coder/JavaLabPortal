# Production Dockerfile for Java Lab Portal (RTU 5th Sem)
FROM tomcat:9.0-jdk11-temurin

LABEL maintainer="Krishna Gupta <krishnagupta@aceit.ac.in>"
LABEL project="Java Lab Portal - RTU 5th Sem Practical Lab"

# Add MySQL Connector J driver to Tomcat lib directory
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.3.0/mysql-connector-j-8.3.0.jar /usr/local/tomcat/lib/mysql-connector-j-8.3.0.jar

# Remove default Tomcat ROOT application so portal serves from root (/)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Set deployment directory
WORKDIR /usr/local/tomcat/webapps/ROOT

# Copy web assets and JSP files
COPY src/main/webapp/ ./

# Copy Java source code and compile into WEB-INF/classes
COPY src/main/java/ /tmp/src/
RUN mkdir -p WEB-INF/classes && \
    javac -cp "/usr/local/tomcat/lib/*" \
          -d WEB-INF/classes \
          $(find /tmp/src -name "*.java") && \
    rm -rf /tmp/src

# Expose default Tomcat port
EXPOSE 8080

# Dynamically bind to cloud-assigned $PORT (Render/Railway/Heroku) or fallback to 8080
CMD ["sh", "-c", "sed -i 's/port=\"8080\"/port=\"'${PORT:-8080}'\"/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
