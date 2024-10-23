# Usa la imagen oficial de SonarQube
FROM sonarqube:latest

# Copiar el archivo sonar.properties personalizado, si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000, que es el puerto de SonarQube
EXPOSE 9000

# Comando para iniciar SonarQube
CMD ["bin/sonar.sh", "start"]
