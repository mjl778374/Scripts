alias iniciarportforwarding="port-forwarding.sh"

if ! [[ -n "$(ps aux | tr -s ' ' | cut -d ' ' -f11 | grep vivaldi-bin)" ]]
then
    echo "Iniciando Vivaldi..."
    Vivaldi.sh &
fi

bijiben &
