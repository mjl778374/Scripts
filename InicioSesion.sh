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
        
        if [ $4 == "1" ]; then
            "$3" &
        else
            "$3"
        fi
    fi
} # function IntentarIniciarApp {

alias iniciarportforwarding="port-forwarding.sh"

#IntentarIniciarApp "/opt/vivaldi/vivaldi-bin" "Vivaldi" "Vivaldi.sh"
IntentarIniciarApp "bijiben" "Notas" "bijiben" 1
#IntentarIniciarApp "anki" "Anki" "anki" 0
