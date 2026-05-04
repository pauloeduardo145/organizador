#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 Instalando Organizador..."

# Verificar Termux
if [ ! -d "$PREFIX" ]; then
    echo "❌ Este instalador é para Termux."
    exit 1
fi

# Atualizar e instalar dependências
pkg update -y
pkg install python -y
pkg install python-pip -y

# Instalar libs
pip install --upgrade pip
pip install tqdm watchdog

# Baixar script principal
curl -sL https://raw.githubusercontent.com/SEU_USUARIO/organizador/main/organizar -o organizar

# Mover para sistema
mv organizar $PREFIX/bin/organizar

# Permissão
chmod 755 $PREFIX/bin/organizar

echo "✅ Instalado com sucesso!"
echo "Use: organizar"
