# Usa la imagen oficial de SonarQube como base
FROM sonarqube:community

# Usa root temporalmente para crear los directorios y ajustar permisos
USER root
RUN mkdir -p /opt/sonarqube/data \
    && mkdir -p /opt/sonarqube/logs \
    && chown -R 1000:1000 /opt/sonarqube

# Cambia al usuario SonarQube para ejecutar el servicio
USER 1000

# Expone el puerto 9000
EXPOSE 9000

# No necesitas especificar ENTRYPOINT porque SonarQube ya tiene uno
