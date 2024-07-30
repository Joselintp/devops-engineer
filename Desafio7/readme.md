# Desafío 7

Este desafío tiene como objetivo la creación de un pipepline multibranch que nos permita manejar 3 entornos correpondiente a cada branch: Dev, Staging y Production. Integraremos el webhook de github para que cada vez que se produzca un cambio en el
repositorio se ejecute el job del playbook.

Validamos 2 aspectos:

• Verificar la ejecución de la estructura creada en el desafio anterior en un pipeline.

• Crear un pipeline multibranch.

## Comandos utilizados

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

## Referencias

[Jenkins Multibranch pipeline](https://www.jenkins.io/doc/tutorials/build-a-multibranch-pipeline-project/)

[Ansible Playbook](https://docs.ansible.com/ansible/latest/playbook_guide/index.html)

[Working with ansible inventories](https://docs.ansible.com/ansible/2.7/user_guide/intro_inventory.html)






