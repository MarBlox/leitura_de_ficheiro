#!/bin/bash

arquivo=./numeros.txt
par=()
impar=()

for numeros in $(cat "$arquivo"); do
    if [[ $((numeros % 2)) == 0 ]]; then
        par+=("$numeros")
    else
        impar+=("$numeros")
    fi
done

echo "Os numeros pares são"
echo
for numero in ${par[@]}; do
    echo $numero
done
echo
echo "Os numeros impares são"
echo
for numero in ${impar[@]}; do
    echo $numero
done
