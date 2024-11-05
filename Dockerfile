# Usa una versión específica de SonarQube para evitar cambios inesperados
FROM sonarqube:9.9-community

# Copia el archivo sonar.properties si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000 (puerto predeterminado de SonarQube)
EXPOSE 9000

# Usa el entrypoint predeterminado de SonarQube
ENTRYPOINT ["/opt/sonarqube/bin/docker/entrypoint.sh"]
CMD ["console"]
