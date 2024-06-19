#!/bin/bash
# Variaveis
echo ">>>>>> estabelecendo conexão"
DEB_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/anydesk_6.3.0-1_armhf.deb"
TAR_URL="https://raw.githubusercontent.com/pablomecalonia/any/main/AD_Meca.tar.gz"
TMP_DIR="/tmp"
ANYDESK_DIR="$TMP_DIR/anydesk-6.3.0"
# Criar diretório temporário
mkdir -p $TMP_DIR
# Baixar o arquivo .deb
echo ">>>>>> baixando .deb"
wget $DEB_URL -O /tmp/anydesk_6.3.0-1_armhf.deb
echo ">>>>>> baixando anydesk"
wget $TAR_URL -O $TMP_DIR/AD_Meca.tar.gz
# Descompactar o arquivo tar.gz
tar -xzvf $TMP_DIR/AD_Meca.tar.gz -C $TMP_DIR
echo ">>>>>> instalando"
# Instalar o AnyDesk
sudo dpkg -i $TMP_DIR/anydesk_6.3.0-1_armhf.deb
# && sudo systemctl stop anydesk && sudo systemctl stop anydesk.service && 
echo ">>>>>> movendo arquivo para anydesk"
# Copiar o arquivo de configuração para o diretório correto
sudo cp $ANYDESK_DIR/anydesk /etc/anydesk;sudo cp $ANYDESK_DIR/anydesk /usr/local/bin/
# Reiniciar o serviço AnyDesk
sudo systemctl restart anydesk
#anydesk
# Limpar arquivos temporários
#rm -rf $TMP_DIR
