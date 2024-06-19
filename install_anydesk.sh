#!/bin/bash
# Variaveis
echo ">>>>>> estabelecendo conexão"
DEB_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk_6.3.0-1_armhf.deb"
CONFIG_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk"
# Baixar o arquivo .deb
echo ">>>>>> baixando .deb"
wget $DEB_URL -O /tmp/anydesk_6.3.0-1_armhf.deb
# Baixar o arquivo de configuração
echo ">>>>>> baixando anydesk"
wget $CONFIG_URL -O /tmp/anydesk
# Instalar o AnyDesk
echo ">>>>>> instalando"
sudo dpkg -i /tmp/anydesk_6.3.0-1_armhf.deb # && sudo systemctl stop anydesk && sudo systemctl stop anydesk.service && 
echo ">>>>>> movendo arquivo para anydesk"
sudo mv /tmp/anydesk /etc/anydesk/ && sudo systemctl restart anydesk
# Parar o serviço AnyDesk
#sudo systemctl stop anydesk
#sudo systemctl stop anydesk.service
# Mover o arquivo de configuração para o diretório correto
#sudo mv /tmp/anydesk /etc/anydesk/
# Reiniciar o serviço AnyDesk
#sudo systemctl restart anydesk
