if [ $# -gt 1 ]; then
  echo "Emplee '$0' [USUARIO]"
  exit 1
elif [ $# -eq 1 ]; then
  usuario=$1
else
  usuario=$USER
fi

ruta_archivo="/run/media/$usuario/Java y UML/inicio.htm"

ls "${ruta_archivo}" > /dev/null

if ! [ $? -eq 0 ]; then
  echo "No existe el archivo '${ruta_archivo}' o no se puede acceder a él"
  exit 2
fi

xdg-open "${ruta_archivo}"
