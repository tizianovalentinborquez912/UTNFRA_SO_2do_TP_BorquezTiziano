ssh-keygen
cat $HOME/.ssh/*.pub
mkdir repogit
cd repogit
git clone git@github.com:tizianovalentinborquez912/TP_AySO.git
cd TP_AySO/
git clone git@github.com:tizianovalentinborquez912/TP_AySO.git
cat /etc/passwd
man grep
grep -i Ubuntu /etc/passwd
echo "Usuario=$(whoami)" > datos_usuario.txt
git config --global user.email "tizianovalentinborquez@gmail.com"
git config --global user.name "tiziano valentin borquez"
git add datos_usuario.txt
git commit -m "ADD: agregado 1er ejercicio sobre datos_usuarios.txt"
git add datos_usuario.txt
git commit -m "ADD: agregado 1er ejercicio sobre datos_usuarios.txt"
git add TP_AySO/, txt
git add datos_usuario.txt
git commit -m "ADD: agregado 1er ejercicio sobre datos_usuarios.txt"
grep -i ubuntu /etc/passwd | awk -F: '{print $2}' > datos_usuario.txt
cat datos_usuario.txt
echo "Usuario=$(whoami)" >> datos_usuario.txt
cat datos_usuario.txt
git add .
git commit -m "ADD: agregado 1er ejercicio sobre datos_usuarios.txt"
git push
cat /proc
/proc
grep "model name" /proc/cpuinfo | head -n1 > info_pc.txt
git add info_pc.txt
git commit -m "feat: Añadiendo información de CPU"
git push
cat <<EOF >> README.md
Alumno: Tiziano Borquez
División: 115
Turno: Mañana
EOF

cat TP_AySO/
ls
cat info_pc.txt
cat README.md
git add README.md
git push
git add .
git commit -m "docs: agregado datos del alumno"
git push
cd 
mkdir -p TP1/{arquitectura/Clase{1,2,3,4,5},so/Clase{1,2,3,4,5,6}}
tree TP1
cd ~/repogit/TP_AySO/
echo 'mkdir -p TP1/{arquitectura/Clase{1,2,3,4,5},so/Clase{1,2,3,4,5,6}}' > script_dir.sh
chmod +x script_dir.sh
git add script_dir.sh
git commit -m "ADD: Añadiendo script"
git push
history -a
cp $HOME/.bash_history Historial_comandos_Tiziano Borquez.txt
cp $HOME/.bash_history Historial_comandos_TizianoBorquez.txt
git add .
git commit -m "feat: subiendo historial de comandos"
:hot_face:
Haz clic para reaccionar
:smiling_imp:
Haz clic para reaccionar
:knife:
Haz clic para reaccionar
Añadir reacción
Editar
Reenviar
Más
[20:35]lunes, 18 de mayo de 2026 20:35
git push
vagrant@VMPruebas:~/repogit/TP_AySO$ git commit -m "feat: subiendo historial de comandos"
git add .
git commit -m "ADD: Entrega final TP1"
git push
sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
sudo apt install git
exit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
DIR_ENTREGA="$HOME/RTA_Examen_$(date +%Y%m%d)"
mkdir -p "$DIR_ENTREGA"
sudo pvcreate /dev/sdb /dev/sdc
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_temp /dev/sdc
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work/
sudo swapon /dev/vg_temp/lv_swap
echo "/dev/vg_datos/lv_docker /var/lib/docker/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
sudo systemctl restart docker
sudo systemctl status docker
cat << 'EOF' > "$DIR_ENTREGA/Punto_A.sh"
sudo pvcreate /dev/sdb /dev/sdc
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_temp /dev/sdc
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/
echo "/dev/vg_datos/lv_docker /var/lib/docker/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
sudo mount -a
sudo swapon -a
sudo systemctl restart docker
EOF

chmod +x "$DIR_ENTREGA/Punto_A.sh"
sudo mkdir -p /usr/local/bin
cat << 'EOF' | sudo tee "/usr/local/bin/BorquezAltaUser-Groups.sh"
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
EOF

/usr/local/bin/BorquezAltaUser-Groups.sh "$USER" "$HOME/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
sudo chmod +x "/usr/local/bin/BorquezAltaUser-Groups.sh"
/usr/local/bin/BorquezAltaUser-Groups.sh "$USER" "$HOME/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"
sudo cp "/usr/local/bin/BorquezAltaUser-Groups.sh" "$DIR_ENTREGA/"
cat << EOF > "$DIR_ENTREGA/Punto_B.sh"

#!/bin/bash

/usr/local/bin/BorquezAltaUser-Groups.sh "\$USER" "\$HOME/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt"

EOF

chmod +x "$DIR_ENTREGA/Punto_B.sh"
cd "$HOME/UTN-FRA_SO_Examenes/202406/docker/"
echo "<h1>Examen Arquitectura y Sistemas Operativos - UTN FRA</h1><p>Alumno: Borquez Tiziano</p>" > index.html 
cat << EOF > Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EOF

docker login
docker build -t "tizianovalentin912/web1-BorquezTizianolatest" .
docker build -t "tizianovalentin912/web1-Borquezlatest" .
docker build -t "tizianovalentinborquez912/web1-BorquezTizianolatest" .
docker build -t "tizianovalentinborquez912/web1-Borquezlatest" .
docker build -t tizianovalentinborquez912/web1-borqueztizianolatest .
docker push tizianovalentinborquez912/web1-borqueztizianolatest
cat << EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 --name web_server_examen "<Tu-Usuario-Docker>/web1-<Tu-Apellido>:latest"
EOF

cat << EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 --name web_server_examen "tizianovalentinborquez912/web1-borquez:latest"
EOF

chmod +x run.sh
cat run.sh
cat << EOF > "$DIR_ENTREGA/Punto_C.sh"
#!/bin/bash
cd \$HOME/UTN-FRA_SO_Examenes/202406/docker/
docker build -t tizianovalentinborquez912/web1-borqueztizianolatest:latest .
docker push tizianovalentinborquez912/web1-borqueztizianolatest:latest
./run.sh
EOF

chmod +x "$DIR_ENTREGA/Punto_C.sh"
cat << EOF > datos_alumno.txt.j2
Nombre: Borquez Tiziano
Legajo: 12 08 03
EOF

cat << EOF > datos_equipo.txt.j2
Alumno: Borquez Tiziano
Legajo: 12 08 03
Equipo: 2P_202406_Supervisor
EOF

cat << EOF > configuracion.yml
---
- name: Tarea de configuracion del examen
  hosts: localhost
  tasks:
    - name: Crear estructura de directorios en /tmp
      file:
        path: "{{ item }}"
        state: directory
        mode: '0755'
      loop:
        - /tmp/2do_parcial/
        - /tmp/2do_parcial/alumno
        - /tmp/2do_parcial/equipo

    - name: Renderizar datos del alumno
      template:
        src: datos_alumno.txt.j2
        dest: /tmp/2do_parcial/alumno/datos_alumno.txt

    - name: Renderizar datos del equipo
      template:
        src: datos_equipo.txt.j2
        dest: /tmp/2do_parcial/equipo/datos_equipo.txt

    - name: Configurar sudoers para el grupo 2PSupervisores
      copy:
        content: "%2PSupervisores ALL=(ALL) NOPASSWD: ALL"
        dest: /etc/sudoers.d/2psupervisores
        validate: /usr/sbin/visudo -cf %s
EOF

ansible-playbook configuracion.yml
cat << EOF > configuracion.yml
---
- name: Tarea de configuracion del examen
  hosts: localhost
  become: yes
  tasks:
    - name: Crear estructura de directorios en /tmp
      file:
        path: "{{ item }}"
        state: directory
        mode: '0755'
      loop:
        - /tmp/2do_parcial/
        - /tmp/2do_parcial/alumno
        - /tmp/2do_parcial/equipo

    - name: Renderizar datos del alumno
      template:
        src: datos_alumno.txt.j2
        dest: /tmp/2do_parcial/alumno/datos_alumno.txt

    - name: Renderizar datos del equipo
      template:
        src: datos_equipo.txt.j2
        dest: /tmp/2do_parcial/equipo/datos_equipo.txt

    - name: Configurar sudoers para el grupo 2PSupervisores
      copy:
        content: "%2PSupervisores ALL=(ALL) NOPASSWD: ALL"
        dest: /etc/sudoers.d/2psupervisores
        validate: /usr/sbin/visudo -cf %s
EOF

ansible-playbook configuracion.yml
mkdir -p ansible/roles/configuracion/templates
mkdir -p ansible/roles/configuracion/tasks
cat << EOF > ansible/roles/configuracion/templates/datos_alumno.txt.j2
Nombre: Tiziano Apellido: Borquez
Division: 115
EOF

cat << EOF > ansible/roles/configuracion/templates/datos_equipo.txt.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_vcpus }}
EOF

cat << EOF > ansible/roles/configuracion/tasks/main.yml
- name: Renderizar datos del alumno
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: Renderizar datos del equipo
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
EOF

cd "$HOME/UTN-FRA_SO_Examenes/202406/ansible/"
ansible-playbook -i hosts playbook.yml --connection=local --become
cat << EOF > "$DIR_ENTREGA/Punto_D.sh"
#!/bin/bash
cd \$HOME/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i hosts playbook.yml --connection=local --become
EOF

chmod +x "$DIR_ENTREGA/Punto_D.sh"
cat << EOF > hosts
[localhost]
127.0.0.1 ansible_connection=local
EOF

cat << EOF > playbook.yml
---
- hosts: localhost
  become: yes
  roles:
    - configuracion
EOF

cat << EOF > "$DIR_ENTREGA/Punto_D.sh"
#!/bin/bash
cd \$HOME/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i hosts playbook.yml
EOF

chmod +x "$DIR_ENTREGA/Punto_D.sh"
"$DIR_ENTREGA/Punto_D.sh"
cd "$HOME/UTN-FRA_SO_Examenes/202406/"
mkdir -p ansible/roles/configuracion/tasks
mkdir -p ansible/roles/configuracion/templates
cat << EOF > ansible/roles/configuracion/templates/datos_alumno.txt.j2
Nombre: Tiziano Apellido: Borquez
Division: 115
EOF

cat << EOF > ansible/roles/configuracion/templates/datos_equipo.txt.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_vcpus }}
EOF

cat << EOF > ansible/roles/configuracion/tasks/main.yml
- name: Renderizar datos del alumno
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: Renderizar datos del equipo
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
EOF

cat << EOF > ansible/hosts
[localhost]
localhost ansible_connection=local
EOF

cat << EOF > ansible/playbook.yml
---
- hosts: localhost
  become: yes
  roles:
    - configuracion
EOF

cat << EOF > "$DIR_ENTREGA/Punto_D.sh"
#!/bin/bash
cd \$HOME/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i hosts playbook.yml
EOF

chmod +x "$DIR_ENTREGA/Punto_D.sh"
"$DIR_ENTREGA/Punto_D.sh"
cat << EOF > ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
#!/bin/bash
docker run -d -p 8080:80 --name web1-borqueztiziano tizianovalentinborquez912/web1-borqueztizianolatest
EOF

chmod +x ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
history -a
