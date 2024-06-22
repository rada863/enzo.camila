#!/bin/bash

echo "Calculadora Simple"
echo "------------------"


read -p "Ingresa el primer número: " num1
read -p "Ingresa el segundo número: " num2


echo "Selecciona la operación:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read -p "Elige una opción (1/2/3/4): " opcion


case $opcion in
    1) resultado=$(bc <<< "$num1 + $num2") ;;
    2) resultado=$(bc <<< "$num1 - $num2") ;;
    3) resultado=$(bc <<< "$num1 * $num2") ;;
    4) resultado=$(bc <<< "scale=2; $num1 / $num2") ;;
    *) echo "Opción no válida." ;;
esac

echo "Resultado: $resultado"

