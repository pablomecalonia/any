#!/bin/bash
# Variaveis
echo ">>>>>> estabelecendo conexão"
DEB_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk_6.3.0-1_armhf.deb"
TAR_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/AD_Meca.tar.gz"
TMP_DIR="/tmp/anydesk_install"
ANYDESK_DIR="$TMP_DIR/anydesk-6.3.0"
# Criar diretório temporário
mkdir -p $TMP_DIR
# Baixar o arquivo .deb
echo ">>>>>> baixando .deb"
wget $DEB_URL -O /tmp/anydesk_6.3.0-1_armhf.deb
echo ">>>>>> baixando anydesk"
wget $TAR_URL -O $TMP_DIR/AD_Meca.tar.gz
# Baixar o arquivo de configuração
#echo ">>>>>> baixando anydesk"
#wget $CONFIG_URL -O /tmp/anydesk
# Instalar o AnyDesk
echo ">>>>>> instalando"
# Instalar o AnyDesk
sudo dpkg -i $TMP_DIR/anydesk_6.3.0-1_armhf.deb
# && sudo systemctl stop anydesk && sudo systemctl stop anydesk.service && 
echo ">>>>>> movendo arquivo para anydesk"
# Copiar o arquivo de configuração para o diretório correto
sudo cp $ANYDESK_DIR/anydesk /etc/anydesk/
sudo cp $ANYDESK_DIR/anydesk /usr/local/bin/
# Reiniciar o serviço AnyDesk
sudo systemctl restart anydesk
anydesk
# Limpar arquivos temporários
rm -rf $TMP_DIR
