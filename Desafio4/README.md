# Desafío 4

El objetivo de este ejercicio es aprender a configurar y utilizar roles de AWS IAM desde
la línea de comandos (CLI) para permitir la escritura en un bucket de S3.

## Comandos utilizados

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

```
## Referencias
[Ejemplos de Políticas](https://docs.aws.amazon.com/es_es/AmazonS3/latest/userguide/example-bucket-policies.html?icmpid=docs_amazons3_console#example-bucket-policies-public-access)
[Permisos entre cuentas y uso de roles de IAM](https://docs.aws.amazon.com/es_es/AmazonS3/latest/userguide/example-walkthroughs-managing-access-example4.html)


