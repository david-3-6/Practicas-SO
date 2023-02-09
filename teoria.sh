#esto es un comentario
a=hello
b=world
c="$a $b" #para poner espacio tengo que poner comillas ""
echo $c

#------------------------------------------------------------------

a=1
b=2
c=$a+$b #para poner espacio tengo que poner comillas ""
echo $c
#todo son cadenas de caracteres. para hacer la suma:
a=1
b=2
c=$(expr $a + $b) #para poner espacio tengo que poner comillas ""
echo $c

#-----------------------------------------------------------------------------

#para hacer un if
if ls -la; then echo ok; else echo nok; fi

#los ; es para separar comandos de la misma linea

#la variable $? dice el estado de finalizacion del ultimo comando. el if mira esta variable.

#existe un comando [ que compara:
if [ $a -gt $b ]
then 
    echo $a es mayor que $b
else
    echo $b es mayor que $a
fi

#las entradas de comandos se escriben con $0, $1..., la variable $* indica todas las entradas, si usamos "$@" 
#si ponemos "una entrada" lo interpreta como una y no como 2 entradas. Si ponemos por ejemplo "$2" lo que meta lo interpreta como un solo parametro.

#-----------------------------------------------------

#el bucle for en este caso itera por cosas ya conocidas

for i in 1 dos 3 cuatro
do
    echo $i
done



