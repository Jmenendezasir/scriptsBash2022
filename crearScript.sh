#!/bin/bash
# Autor José Carlos
# Fecha: 04/11/2021
# Descripción: 
clear

echo "~~~~~~~~~~~~~"
echo " CREADOR DE  "
echo "  SCRIPTS    "
echo "             "
echo "~~~~~~~~~~~~~"
echo ""
echo ""
read -p "¿Quién es el creador del script? " nombre
echo "Me da igual, el propietario es el usuario que está usando el script :)"
sleep 1
clear
read -p "Introduce una descripción (opcional): " descripcion
clear
echo "Creando el script."
sleep .5
clear
echo "Creando el script.."
sleep .5
clear
echo "#!/bin/bash" > $1
echo "# Autor: $USER" >> $1
echo "# Fecha: " `date +"%d/%m/%Y"` >> $1
echo "# Descripción: $descripcion" >> $1
chmod u+x $1
echo "El script se ha creado satisfactoriamente..."
sleep .5
nano $1
