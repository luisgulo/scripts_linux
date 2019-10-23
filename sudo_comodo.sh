#!/bin/bash
# SUDO-COMODO (No se necesita la clave del usuario)
# Este script crea un fichero para poder usar sudo al usuario
echo "Debe proporcionar la clave de root cuando se le solicite"
echo "$USER ALL = (ALL) NOPASSWD: ALL" > /tmp/autorizado_$USER; su -c "cp /tmp/autorizado* /etc/sudoers.d/."
