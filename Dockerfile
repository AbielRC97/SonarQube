# Usa la imagen oficial de SonarQube
FROM sonarqube:latest

# Copiar el archivo sonar.properties si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000
EXPOSE 9000

# Comando para iniciar SonarQube con la ruta correcta
CMD ["/opt/sonarqube/bin/linux-x86-64/sonar.sh", "console"]
