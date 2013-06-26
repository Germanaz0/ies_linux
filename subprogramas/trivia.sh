#!/usr/bin/bash
clear

echo "Bienvenido a Trivia_Linux"
echo "Este es un juego de preguntas y respuestas"
echo "Espero vengas a divertirte y aprender sobre Inventos"
echo "Si respondes correctamente a las 10 preguntas te podrás conciderar todo un cerebro"
echo "Comenzamos?"

cont=0
echo "¿Quién inventó el teléfono?"
read res1

if test "$res1" = "Alexander Graham Bell"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
  echo "Lo siento, la respuesta correcta era: Alexander Graham Bell"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Qué aviador alemán inventó el dirigible?"
read res2

if test "$res2" = "Zeppelin"
  then
  echo "RESPUESTA CORRECTA!!!!!"
  cont=$(($cont + 1))
else
  echo "Lo siento, la respuesta correcta era: Zeppelin"
fi

echo "Pasemos a la siguiente pregunta:"      
echo "¿Quién inventó la red social Facebook?"    
read res3

if test "$res3" = "Mark Zuckerberq"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Mark Zuckerberg"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Quien inventó el alfabeto Morse?" 
read res4

if test "$res4" = "Samuel Morse" 
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Samuel Morse"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Quien inventó del pararrayos?" 
read res5

if test "$res5" = "Benjamín Franklin" 
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Benjamín Franklin"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Quien inventó del autogiro, aparato predecesor del helicóptero?" 
read res6

if test "$res6" = "Juan de la Cierva"
 then 
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Juan de la Cierva"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Quien inventó el Cinematógrafo?"  
read res7

if test "$res7" = "Los hermanos Lumiere"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
  echo "Lo siento, la respuesta correcta era: Los hermanos Lumiere"
fi

echo "Pasemos a la siguiente pregunta:"
echo "¿Quien inventó la balanza hidrostática?" 
read res8

if test "$res8" = "Arquímedes"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Arquímedes"
fi

echo "Pasemos a la siguiente pregunta:" 
echo "¿Quien inventó la bombilla incandescente?" 
read res9

if test "$res9" = "Tomás Edison"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
  echo "Lo siento, la respuesta correcta era: Tomás Edison"
fi

echo "Pasemos a la siguiente pregunta:"   
echo "¿Quien inventó la máquina de calcular, sumar y restar?" 
read res10

if test "$res10" = "Blaise Pascal"
 then
 echo "RESPUESTA CORRECTA!!!!!"
 cont=$(($cont + 1))
else
 echo "Lo siento, la respuesta correcta era: Blaise Pascal"
fi

if [ $cont = 10 ] 
 then 
 echo "ERES TODO UN CEREBRO ¬¬"
else 
  echo "NOS VEMOS LA PRÓXIMA!!!!!"
fi

