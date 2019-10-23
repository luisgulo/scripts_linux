#!/bin/bash
# SUDO-SEGURO (Se pide la clave del usuario siempre)
# Este script crea un fichero para poder usar sudo al usuario
echo "Debe proporcionar la clave de root cuando se le solicite"
echo "$USER ALL=(ALL:ALL) ALL" > /tmp/autorizado_$USER; su -c "cp /tmp/autorizado* /etc/sudoers.d/."  
