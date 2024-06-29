function IntentarIniciarApp {
    if ! [[ -n $(ps aux | tr -s ' ' | cut -d ' ' -f11 | grep $1) ]]
    then
        echo "Iniciando $2..."
        . "$3" &
    fi
} # function IntentarIniciarApp {

alias iniciarportforwarding="port-forwarding.sh"

IntentarIniciarApp "vivaldi-bin" "Vivaldi" "Vivaldi.sh"
bijiben &
anki &
