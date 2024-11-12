# Usa la imagen oficial de SonarQube como base
FROM sonarqube:community

# Configura la conexión a la base de datos en el archivo sonar.properties
USER root
RUN echo "sonar.jdbc.username=${PGUSER}" >> /opt/sonarqube/conf/sonar.properties \
    && echo "sonar.jdbc.password=${PGPASSWORD}" >> /opt/sonarqube/conf/sonar.properties \
    && echo "sonar.jdbc.url=jdbc:postgresql://${PGHOST}:${PGPORT}/${PGDATABASE}" >> /opt/sonarqube/conf/sonar.properties \
    && chown -R 1000:1000 /opt/sonarqube

# Cambia al usuario SonarQube para ejecutar el servicio
USER 1000
EXPOSE 9000
