# Desafío 5

El objetivo de este ejercicio es aprender a configurar y crear escenarios para el acceso a una instancia de BD situada en una VPC.

Serán creados 2 Escenarios para el acceso a una instancia de base de datos en una VPC:

• Mediante una aplicación cliente a través de Internet.

• Mediante una instancia EC2 de la misma VPC (Mayor seguridad)

## Comandos utilizados

```
# Comando para instalar cliente mariadb en Ubuntu
sudo apt install mariadb-client-core-10.6

# Otra forma de instalar cliente mariadb en Ubuntu
sudo apt install mariadb-client-core

# Este comando permite conectarnos a una instancia de mariadb
mariadb -h endpoint -u admin -p

# Este comando enumera las bases de datos 
SHOW DATABASES; 

```


## Referencias

[Creación de un Usuario IAM](https://docs.aws.amazon.com/es_es/filegateway/latest/files3/setting-up-create-iam-user.html)

[Escenarios de acceso a una instancia de base de datos en una VPC](https://docs.aws.amazon.com/es_es/AmazonRDS/latest/UserGuide/USER_VPC.Scenarios.html#USER_VPC.Scenario4)


