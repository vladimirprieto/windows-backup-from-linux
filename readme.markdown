#ENGLISH

##HISTORY

so time ago i use to work fixing computer problems.  in my continues search for create a better procedure on the job, 
i create a single script that backups and restore an image from the drive C: from windows.  that way, on just a few minutes
users can have there windows machine working again.

##INSTALLATION

just paste the crea_restauro.sh on any place on linux.  i usually paste into user's home directory.  then make the file executable:

chmod +x crea_restauro.sh

this script uses PartImage, but if it is not installed it tries to install through aptitude command.  in that case, it ask you root password

##HOWTO USE

on the terminal just call the file:

~$ ./crea_restauro.sh

##CONDITIONS

this script is supposed to work with the following envarioment:

- dual boot OS: windows and linux.
- it is recomended to partion the hdd just like de following: 
	partition 1 (windows, C:) ~20GB
	partition 2 (windows, D:) all you could have
	partition 3 (linux) ~6GB is enough for backup winXP
	
##NOTES

- just windows 7 have been tested.  for other windows you have to modify the script in order to point to the right partition.
- until ubuntu 14.04 have been tested.
- i made this public in case someone could needed and for make progress on it (i have no time)

#SPANISH

##HISTORIA

hace un tiempo atrás trabajé arreglando computadores.  en mi continuo esfuerzo por mejorar el trabajo,
creé un sólo archivo que crea un respaldo de windows (C:) y lo restaura devuelta. de esa manera, en sólo unos pocos minutos
los usuarios pueden tener su máquina windows funcionando denuevo.

##INSTALACIÓN

basta con copiar el archivo crea_restauro.sh en cualquier lugar de linux.  usualmente lo pego en la carpeta home del usuario.
luego hay que hacer el archivo ejecutable:

chmod +x crea_restauro.sh

este script usa PartImage, pero si no está instalado intenta hacerlo a través del comando aptitude.  en ese caso, pedirá contraseña de root.

##COMO USAR

en la terminal basta con llamar al archivo:

~$ ./crea_restauro.sh

##CONDICIONES

el script fue pensado para trabajar con las siguientes configuraciones:

- SO dual: windows y linux.
- se recomienda particionar el disco como sigue:
	partición 1 (windows, C:) ~20GB
	partición 2 (windows, D:) todo lo que se pueda
	partición 3 (linux) ~6GB es suficiente para respaldar winXP
	
##NOTAS

- sólo está probado para Windows 7. para otros windows habría que modificar el script para que tome la partición correcta.
- sólo está probado hasta Ubuntu 14.04
- hice público este script en caso de que alguien lo necesite y para que pueda ser mejorado (ya no tengo mucho tiempo libre)
