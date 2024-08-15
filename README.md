# devops-engineer
Contiene todo el contenido relacionado con los desafíos  del Bootcamp Devops #69128

>## Desafio 1: Creación de Pipeline

### Algunos comandos
```
-  sudo visudo  (Agregar en la ultima linea ====>  jenkins ALL=(ALL:ALL) NOPASSWD:ALL)
-  getent group & sudo groupadd  (Para agregar grupo)
-  openssl rand -base64  (para generar contraseña)
-  sudo useradd (para agregar usuario)
-  sudo chpasswd (asignar contraseña temp)
```

>## Desafio 2: Creación de Pipeline -Jenkins Webhook y nodejs API

### Algunos comandos
```
-  Instalación NGROK --> $ choco install ngrok
-  Configurar explícitamente la IP del host local --> ngrok http 172.16.0.89:8080
-  Instalació NodeJS -->
    # installs NVM (Node Version Manager)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    # download and install Node.js
    nvm install 20
    # verifies the right Node.js version is in the environment
    node -v # should print `v20.12.2`
    # verifies the right NPM version is in the environment
    npm -v # should print `10.5.0`
```
>## Desafio 3: Actividad AWS

### Algunos comandos
```
-  Conéctar a la instancia EC2 a través de SSH --> ssh -i <ruta_a_tu_clave_privada> ec2-user@<direccion_ip_publica_de_la_instancia>
-  Verificar que el servicio Apache (httpd) esté instalado y en ejecución --> sudo systemctl status httpd
-  Verificar si AWS CLI está instalado --> aws --version
-  AWS Configuración, solicitará clave de acceso, clave secreta, región predeterminada y formato de salida --> aws configure
-  Instalación de AWS CLI en Ubuntu
    sudo apt-get update
    sudo apt-get install awscli
    aws --version
-  Listar los dispositivos de bloque -->    lsblk
-  Formatea volumen EBS --> sudo mkfs -t ext4 /dev/xvdf
-  Crea el directorio de montaje para el volumen EBS -->  sudo mkdir /desafios
-  Monta manualmente el volumen EBS  --> sudo mount /desafios
-  Verificar que el volumen EBS esté montado correctamente y que se pueda escribir en él
    cd /desafios
    sudo touch test.txt
```

>## Desafio 4: AWS Uso de roles

### Algunos comandos
```
# Este comando crea un bucket
aws s3api create-bucket \
    --bucket my-bucket- \
    --region us-east-1

# Comando aws iam create-user
aws iam create-user --user-name s3-support

# Este comando crea un nuevo rol en IAM
# aws iam create-role
aws iam create-role --role-name s3-write-role --assume-role-policy-document file://trust-policy.json

# Configuración aws
aws configure
```
>## Desafio 5: AWS RDS + EC2

### Algunos comandos
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
>## Desafio 6: Ansible proyecto modular

### Algunos comandos
```
# Instalación de Ansible
sudo apt update
sudo apt-get install ansible

# Verificar Versión de Ansible
ansible --version

# Verificar IP de instancias Controller y Node1 - Creadas mediante Multipass
multipass list

# Comprobación de conexión con el host, con este comando verificamos que todos los hosts responden al ping
ansible all -i inventory.ini -m ping

# Ejecución del playbook
ansible-playbook -i inventory.ini main.yaml 

```
>## Desafio 7: Ansible proyecto CI_CD

### Algunos comandos
```
# Verificar IP de instancias Controller, Node1, Node 2 y Node3 - Creadas mediante Multipass
multipass list

# Para generar un nuevo par de claves SSH.
ssh-keygen

# Ejecución del playbook
ansible-playbook -i inventory.ini main.yaml

# Ejecución de Ngrok
ngrok http http://192.168.68.60:8080

```

>## Desafio 8: Terraform + Github Actions

### Referencias
```
[Documentación oficial de actions/checkout](https://github.com/actions/checkout)

[Guías para GitHub Actions](https://docs.github.com/es/actions/guides)

[Guías para Terraform](https://developer.hashicorp.com/terraform/docs)

```
