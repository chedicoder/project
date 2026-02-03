FROM openjdk:17-jdk-slim AS builder
WORKDIR /app
COPY .mvn/ ./.mvn
COPY mvnw pom.xml  ./
RUN sed -i 's/\r$//' mvnw \
&& ./mvnw dependency:go-offline
COPY . .
RUN sed -i 's/\r$//' mvnw \
&& ./mvnw package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./CA_Cert.pem /tmp 
RUN keytool -importcert \
  -cacerts \
  -file /tmp/CA_Cert.pem \
  -alias CA-cert \
  -storepass changeit -noprompt \
  && rm /tmp/CA_Cert.pem
RUN useradd -ms /bin/bash myuser
USER myuser
COPY --from=builder --chown=myuser:myuser /app/target/*.jar run.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/run.jar"]
