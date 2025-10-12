if ! [ $# -eq 1 ]; then
  echo "Emplee $0 USUARIO"
  exit 1
fi

ruta_archivo="/run/media/$1/Java y UML/inicio.htm"

ls "$ruta_archivo" > /dev/null

if ! [ $? -eq 0 ]; then
  echo "No se puede acceder o no existe el archivo $ruta_archivo"
  exit 2
fi

xdg-open "$ruta_archivo"
