#!/bin/bash
if [[ $(which apk) -eq 0 ]]; then
  apk update && apk add bash less vim yq jq git busybox-extras iproute2 curl
fi

if [[ $(which apt) -eq 0 ]]; then
  apt upgrade && apt update && apt install bash jq yq git vim less curl
fi

alias ll="ls -la --color=auto"

curl https://gist.githubusercontent.com/simeon-anastasov-divido/528eeae8a5da4e91f9be7942b7d5680f/raw/41829432a4838d5d84eaf5f9436096490a672836/.vimrc -O ~/.vimrc