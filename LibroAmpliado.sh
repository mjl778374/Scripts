LIBRO_AMPLIADO=1
INFOGRAFIA=2
NINGUNO=0

TIPO_ARCHIVO=LIBRO_AMPLIADO

if ! [ $# -eq 1 ]; then
  echo "Emplee '$0' NUM_LIBRO"
  exit 1
elif [ $1 == "1" ]; then
  nombre_archivo="Libro Ampliado_ Aprendiendo de los mejores, de Francisco Alcaide.pdf"
elif [ $1 == "2" ]; then
  nombre_archivo="Libro Ampliado_ Creatividad S.A., de Ed Catmull.pdf"
elif [ $1 == "3" ]; then
  nombre_archivo="Storytelling salvaje, de Isra Bravo.pdf"
elif [ $1 == "4" ]; then
  nombre_archivo="De cero a uno, de Peter Thiel.pdf"
elif [ $1 == "5" ]; then
  nombre_archivo="Libro ampliado_ 48 leyes del poder, de Robert Greene.pdf"
elif [ $1 == "6" ]; then
  nombre_archivo="Libro Ampliado_ La psicología del dinero, por Morgan Housel.pdf"
elif [ $1 == "7" ]; then
  nombre_archivo="Libro Ampliado_ Mientras escribo, de Stephen King.pdf"
elif [ $1 == "8" ]; then
  nombre_archivo="Libro Ampliado_ Diario para estoicos, de Ryan Holiday.pdf"
elif [ $1 == "9" ]; then
  nombre_archivo="Resumen Ampliado_ El almanaque, de Naval Ravikant.pdf"
elif [ $1 == "10" ]; then
  nombre_archivo="Resumen Ampliado_ Tus zonas erróneas, de Wayne Dyer.pdf"
elif [ $1 == "11" ]; then
  nombre_archivo="Resumen Ampliado_ El arte de la seducción, de Robert Greene.pdf"
elif [ $1 == "12" ]; then
  nombre_archivo="Resumen Ampliado_ Crea tu segundo cerebro, de Tiago Forte.pdf"
elif [ $1 == "13" ]; then
  nombre_archivo="Resumen Ampliado_ Prisioneros de la geografía, de Tim Marshall.pdf"
elif [ $1 == "14" ]; then
  nombre_archivo="Resumen Ampliado_ Armas de titanes, de Tim Ferriss.pdf"
elif [ $1 == "15" ]; then
  nombre_archivo="Resumen Ampliado_ Homo Deus, de Yuval Noah Harari.pdf"
elif [ $1 == "16" ]; then
  nombre_archivo="Resumen Ampliado_ Decídete, de Dan y Chip Heath.pdf"
else
  TIPO_ARCHIVO=NINGUNO
fi

if [ $TIPO_ARCHIVO == NINGUNO ]; then
  TIPO_ARCHIVO=INFOGRAFIA
fi

guia_interactiva=""

if [ $TIPO_ARCHIVO == INFOGRAFIA ]; then
  if [ $1 == "17" ]; then
    nombre_archivo="Cómo ganar amigos e influir en las personas.pdf"
    guia_interactiva="https://libroaldiapro.typeform.com/to/RjLXbVZb"
  else
    TIPO_ARCHIVO=NINGUNO
  fi
fi

if [ $TIPO_ARCHIVO == NINGUNO ]; then
  echo "El parámetro '$1' no corresponde a ningún libro ampliado ni a ninguna infografía"
  exit 2
fi

MENSAJE_TIPO_ARCHIVO="el libro ampliado"

if [ $TIPO_ARCHIVO == INFOGRAFIA ]; then
  MENSAJE_TIPO_ARCHIVO="la infografía"
fi

echo "Abriendo $MENSAJE_TIPO_ARCHIVO '${nombre_archivo}'"

if [[ -n $guia_interactiva ]] then
  echo "Abriendo la guía interactiva '${guia_interactiva}'"
fi

sleep 5
xdg-open "/home/manuel/Documentos/Libro al Día/LibrosAmpliados/${nombre_archivo}"

if [[ -n $guia_interactiva ]] then
  xdg-open "${guia_interactiva}"
fi
