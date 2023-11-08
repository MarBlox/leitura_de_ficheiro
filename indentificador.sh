arquivo=./numeros.txt
par=()
impar=()

while read linha; do
    if [[ $((linha % 2)) == 0 ]]; then
        par+=("$linha")
    else
        impar+=("$linha")
    fi
done < "$arquivo"


echo "Os numeros pares são"
echo
for par in ${par[@]}; do
    echo $par
done
echo
echo "Os numeros impares são"
echo
for impar in ${impar[@]}; do
    echo $impar
done