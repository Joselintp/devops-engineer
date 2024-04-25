# Ejercicios Prácticos en Clases 
Contiene ejercicios prácticos realizados en Clases

>## Clase 14: Creación de scripts de Bash

#### Creación Script en Replit (https://replit.com/@joselinteixeira/CreacionScript#main.sh)

#### Creación de Pipeline 

```mermaid
graph TD;
    A[Start] --> B[Check input parameters];
    B -->|Valid parameters| C[Execute main.sh];
    B -->|Invalid parameters| D[Display error message and exit];
    C --> E[End];
    D --> E;


