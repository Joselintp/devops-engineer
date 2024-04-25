# Ejercicios Prácticos en Clases 
Contiene ejercicios prácticos realizados en Clases

>## Clase 14: Creación de scripts de Bash

#### Creación Scrpt en Replit (https://replit.com/@joselinteixeira/CreacionScript#main.sh)

setting:

    {
        flowChart : true
    }

#### Example

```flow
st=>start: User login
op=>operation: Operation
cond=>condition: Successful Yes or No?
e=>end: Into admin

st->op->cond
cond(yes)->e
cond(no)->op

