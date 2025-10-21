if ! [[ $# -eq 0 ]]; then
  echo "Emplee '$0'"
  exit 1
fi

usuario=$USER

ruta_archivo="/run/media/$usuario/Java y UML/inicio.htm"

ls "${ruta_archivo}" > /dev/null

if ! [ $? -eq 0 ]; then
  echo "No existe el archivo '${ruta_archivo}' o no se puede acceder a él"
  exit 2
fi

echo "Abriendo el archivo '${ruta_archivo}'"
xdg-open "${ruta_archivo}"
