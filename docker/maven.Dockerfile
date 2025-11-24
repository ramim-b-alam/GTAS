FROM maven:3.8.7-eclipse-temurin-11

# VOLUME [ "/project" ]
# COPY gtas-parent /project
WORKDIR /project

RUN rm -fr /root/.m2/repository/gov/gtas/gtas-webapp

CMD ["mvn", "install", "-Dskip.unit.tests=true"]
