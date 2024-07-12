# Desafío 6

Este desafío tiene como objetivo validar que contamos con un entorno de desarrollo válido y
realizar una actividad para modularizar un proyecto.

Validamos 2 aspectos:

• Verificar la ejecución de la estructura Actual del Proyecto.

• Modularizar el proyecto.

## Comandos utilizados

```
# Verificar IP de instancias Controller y Node1 - Creadas mediante Multipass
multipass list

# Comprobación de conexión con el host, con este comando verificamos que todos los hosts responden al ping
ansible all -i inventory.ini -m ping

# Ejecución del playbook
ansible-playbook -i inventory.ini main.yaml 



```


## Referencias

[Instalación Ansible Ubuntu](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu)

[Ansible Playbook](https://docs.ansible.com/ansible/latest/playbook_guide/index.html)



