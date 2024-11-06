# Usa una versión específica de SonarQube para evitar problemas con la estructura de archivos
FROM sonarqube:9.9-community

# Copia el archivo sonar.properties si tienes configuraciones específicas
COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Exponer el puerto 9000 (puerto predeterminado de SonarQube)
EXPOSE 9000

# Inicia SonarQube directamente con el script de inicio en la raíz de bin
CMD ["./opt/sonarqube/bin/sonar.sh", "console"]
