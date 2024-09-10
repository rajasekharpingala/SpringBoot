FROM gradle:jdk21-alpine AS build

COPY --chown=gradle:gradle . /home/gradle/src

WORKDIR /home/gradle/src

RUN gradle bootJar --no-daemon

FROM gradle:jdk21-alpine

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/helloworld-1.0-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/helloworld-1.0-SNAPSHOT.jar"]