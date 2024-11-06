## Crear SonarQube
1. Ejecutar el comando 
```
docker build -t sonarqube:main .
```
2. Ejecutar el siguiente comando
```
docker run -d -p 9000:9000  sonarqube:main
```