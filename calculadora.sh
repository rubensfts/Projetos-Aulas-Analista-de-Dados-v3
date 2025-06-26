#!/bin/bash

mostrar_menu() {
    clear
    echo "Calculadora em Shell Script"
    echo "--------------------------"
    echo "1 - Soma"
    echo "2 - Subtração"
    echo "3 - Multiplicação"
    echo "4 - Divisão"
    echo "5 - Sair"
    echo ""
}

while true; do
    mostrar_menu
    
    read -p "Escolha a opção: " opcao
    
    case $opcao in
        1)
            read -p "Digite o primeiro número: " num1
            read -p "Digite o segundo número: " num2
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado: $num1 + $num2 = $resultado"
            ;;
        2)
            read -p "Digite o primeiro número: " num1
            read -p "Digite o segundo número: " num2
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado: $num1 - $num2 = $resultado"
            ;;
        3)
            read -p "Digite o primeiro número: " num1
            read -p "Digite o segundo número: " num2
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado: $num1 * $num2 = $resultado"
            ;;
        4)
            read -p "Digite o primeiro número: " num1
            read -p "Digite o segundo número: " num2
            if (( $(echo "$num2 == 0" | bc -l) )); then
                echo "Erro: divisão por zero!"
            else
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $num1 / $num2 = $resultado"
            fi
            ;;
        5)
            echo "Programa encerrado."
            exit 0
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac
    
    read -p "Pressione Enter para continuar..."
done