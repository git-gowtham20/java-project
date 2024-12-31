FROM amazonlinux
RUN yum install java-17 -y
RUN yum install maven -y
WORKDIR /app
COPY . /app
RUN mvn clean install
CMD ["java", "-jar", "target/app-0.0.1-SNAPSHOT.war"]
EXPOSE 8085
