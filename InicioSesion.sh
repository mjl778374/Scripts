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

function IntentarIniciarAppVivaldi {
    IntentarIniciarApp "/opt/vivaldi/vivaldi-bin" "Vivaldi" "Vivaldi.sh" $1
} # function IntentarIniciarAppVivaldi {

function IntentarIniciarAppNotas {
    IntentarIniciarApp "bijiben" "Notas" "bijiben" $1
} # function IntentarIniciarAppNotas {

function IntentarIniciarAppAnki {
    IntentarIniciarApp "anki" "Anki" "anki" $1
} # function IntentarIniciarAppAnki {

alias iniciarportforwarding="port-forwarding.sh"
