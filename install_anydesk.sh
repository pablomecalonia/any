#!/bin/bash
# Variaveis
DEB_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk_6.3.0-1_armhf.deb"
CONFIG_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk"
# Baixar o arquivo .deb
wget $DEB_URL -O /tmp/anydesk_6.3.0-1_armhf.deb
# Baixar o arquivo de configuração
wget $CONFIG_URL -O /tmp/anydesk
# Instalar o AnyDesk
sudo dpkg -i /tmp/anydesk_6.3.0-1_armhf.deb && sudo systemctl stop anydesk && sudo systemctl stop anydesk.service && sudo mv /tmp/anydesk /etc/anydesk/ && sudo systemctl restart anydesk
# Parar o serviço AnyDesk
#sudo systemctl stop anydesk
#sudo systemctl stop anydesk.service
# Mover o arquivo de configuração para o diretório correto
#sudo mv /tmp/anydesk /etc/anydesk/
# Reiniciar o serviço AnyDesk
#sudo systemctl restart anydesk
