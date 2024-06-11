if ! [[ "$PATH" =~ "$HOME/Scripts:" ]]
then
    PATH="$HOME/Scripts:$PATH"
fi

export PATH
alias iniciarportforwarding="port-forwarding.sh"

if [[ "$(ps aux | tr -s ' ' | cut -d ' ' -f11 | grep -c vivaldi-bin)" == "0" ]]
then
    echo "Iniciando Vivaldi..."
    Vivaldi.sh &
fi

bijiben &
