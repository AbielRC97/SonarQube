FROM sonarqube:latest

# Copiar el archivo sonar.properties personalizado
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

EXPOSE 9000
