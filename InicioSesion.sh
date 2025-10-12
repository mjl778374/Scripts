CARPETA_SCRIPTS="$HOME/Scripts"

if ! [[ "$PATH" =~ "$CARPETA_SCRIPTS:" ]]
then
    PATH="$CARPETA_SCRIPTS:$PATH"
fi

export PATH

function IntentarIniciarApp {
    if ! [[ -n $(ps aux | tr -s ' ' | cut -d ' ' -f11 | grep --line-regexp $1) ]]
    then
        echo "Iniciando $2..."
        $3 &
    fi
} # function IntentarIniciarApp {

alias iniciarportforwarding="port-forwarding.sh"

#IntentarIniciarApp "/opt/vivaldi/vivaldi-bin" "Vivaldi" "Vivaldi.sh"
IntentarIniciarApp "bijiben" "Notas" "bijiben"
#IntentarIniciarApp "anki" "Anki" "anki"
