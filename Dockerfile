FROM amazoncorretto:11.0.8-alpine

ARG PORT=8080
ARG JAR_FILE=./build/libs/*-all.jar

COPY ${JAR_FILE} app.jar

EXPOSE ${PORT}

ENTRYPOINT ["java", "-jar", "app.jar", "-Dmicronaut.env.deduction=false"]