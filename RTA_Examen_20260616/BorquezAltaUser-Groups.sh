if [ $# -ne 2 ]; then
    echo "Error: Se requieren 2 parámetros."
    echo "Uso: $0 <Usuario_Base_Clave> <Path_Lista_Usuarios>"
    exit 1
fi
USUARIO_BASE=$1
ARCHIVO_LISTA=$2
PASS_BASE=$(sudo grep "^${USUARIO_BASE}:" /etc/shadow | cut -d: -f3)
if [ -z "$PASS_BASE" ]; then
    echo "Error: El usuario base no existe o no tiene clave en /etc/shadow."
    exit 1
fi
while IFS=',' read -r usuario grupo directorio || [ -n "$usuario" ]; do
[ -z "$usuario" ] && continue
usuario=$(echo "$usuario" | xargs)
    grupo=$(echo "$grupo" | xargs)
    directorio=$(echo "$directorio" | xargs)
if ! getent group "$grupo" > /dev/null; then
        sudo groupadd "$grupo"
    fi
if ! id "$usuario" > /dev/null 2>&1; then
sudo useradd -m -d "$directorio" -s /bin/bash -g "$grupo" "$usuario"
sudo usermod -p "$PASS_BASE" "$usuario"
echo "Usuario $usuario creado de forma exitosa."
else
        echo "El usuario $usuario ya existe."
    fi
done < "$ARCHIVO_LISTA"
