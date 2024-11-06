# Usa una versión específica de SonarQube para asegurar una estructura estable
FROM sonarqube:9.9-community

# Copia el archivo sonar.properties si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000 (puerto predeterminado de SonarQube)
EXPOSE 9000

# Inicia SonarQube sin duplicar la ruta
CMD ["/opt/sonarqube/bin/sonar.sh", "console"]
