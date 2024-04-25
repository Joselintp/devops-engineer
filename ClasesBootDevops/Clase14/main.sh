 #!/bin/bash

 # Función para mostrar el título: Información del sistema seguido del nombre del nombre de usuario
 system_info() {
   echo "*** Informe del Sistema para: $(hostname) ***"
 }

 # Función para mostrar Fecha / Hora
 date_and_time() {
   date +"%d/%m/%Y %H:%M:%S"
 }

 # Función para mostrar uso de disco
 disk_usage() {
   # df -h: muestra el espacio disponible en el sistema de archivos
   # grep '/': filtra las líneas de salida que contienen la barra diagonal "/"
   # tail -n 1: se utiliza para mostrar la información de la partición raíz 
   # awk '{print $5}': Este comando extrae la columna 5 del resultado 
   df -h | grep '/' | tail -n 1 | awk '{print $5}'
 }

 # Función para mostrar usuarios conectados
 logged_users() {
   who
 }

 # Función para mostrar el uso de memoria en Megas
 memory_usage() {
 # free: muestra información sobre el uso de memoria del sistema
 # awk permite procesar y manipular texto.
 free -m | awk 'NR==2{printf "Total: %sMB - Disponible: %sMB\n", $2, $7}'
 }

 # Función para mostrar los procesos que coincidan con el nombre indicado
 display_processes() {
   if [ -z "$1" ]; then
     echo "No se especificó ningún nombre de proceso"
   else
     ps -aux | grep $1
   fi
 }

main(){
 # Función principal
 system_info
 echo ""
 echo "Fecha y Hora: $(date_and_time)"
 echo "Uso del Disco: $(disk_usage)"
 echo "Usuarios Logueados: $(logged_users)"
 echo "Uso de Memoria: $(memory_usage)"
 echo "Procesos: "
 read -p "Ingrese un nombre o parte del nombre de un proceso: " process_name
 display_processes $process_name
 echo ""
 echo "Script ejecutado con éxito"
}

main $1
