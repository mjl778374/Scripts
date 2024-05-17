if [ $# -eq 0 ]; then
  echo "Debe indicar un parámetro."
  exit 1
else
  encontrado=false
  opciones_validas=("1" "2" "3")
  
  for item in "${opciones_validas[@]}"; do
    if [ "$item" == "$1" ]; then
      encontrado=true
      break
    fi
  done
fi

if [ $encontrado != true ]; then
  echo "El parámetro '$1' no corresponde a un libro válido."
  exit 2
fi

evince /home/manuel/Documentos/Interchange/Interchange_4th_$1_SB.pdf
