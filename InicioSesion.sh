CARPETA_SCRIPTS="$HOME/Scripts"

if ! [[ "$PATH" =~ "$CARPETA_SCRIPTS:" ]]
then
    PATH="$CARPETA_SCRIPTS:$PATH"
fi

export PATH

function IntentarIniciarApp {
    if [[ -z $(ps aux | tr -s ' ' | cut -d ' ' -f11 | grep --line-regexp $1) ]]
    then
        echo "Iniciando $2..."
   
        comando=$3
        
        if [ $4 == "1" ]; then
            comando="$comando" &
        fi
        
        "$comando"
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
