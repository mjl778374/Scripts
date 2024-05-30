if [ $# -eq 0 ]; then
  echo "Debe indicar un parámetro."
  exit 1
elif [ $1 == "1" ]; then
  nombre_archivo="Libro Ampliado_ Aprendiendo de los mejores, de Francisco Alcaide.pdf"
elif [ $1 == "2" ]; then
  nombre_archivo="Libro Ampliado_ Creatividad S.A., de Ed Catmull.pdf"
elif [ $1 == "3" ]; then
  nombre_archivo="Storytelling salvaje, de Isra Bravo.pdf"
else
  echo "El parámetro '$1' no corresponde a ningún libro ampliado."
  exit 2
fi

evince "/home/manuel/Documentos/Libro al Día/LibrosAmpliados/${nombre_archivo}"
