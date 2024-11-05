# Usa una versión específica de SonarQube para evitar cambios inesperados
FROM sonarqube:9.9-community

# Copia el archivo sonar.properties si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000 (puerto predeterminado de SonarQube)
EXPOSE 9000

# Iniciar SonarQube usando la ruta correcta del script
CMD ["bin/sonar.sh", "console"]
