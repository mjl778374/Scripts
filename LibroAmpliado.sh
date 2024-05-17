if [ $# -eq 0 ]; then
  echo "Debe indicar un parámetro."
  exit 1
elif [ $1 == "1" ]; then
  nombre_archivo="Libro Ampliado_ Aprendiendo de los mejores, de Francisco Alcaide.pdf"
else
  echo "El parámetro '$1' no corresponde a ningún libro ampliado."
  exit 2
fi

evince "/home/manuel/Documentos/Libro al Día/Libros Ampliados/${nombre_archivo}"
