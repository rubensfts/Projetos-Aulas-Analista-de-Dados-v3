while True:  # Loop infinito até que o usuário decida sair
    print("\n1 - soma")
    print("2 - subtração")
    print("3 - multiplicação")
    print("4 - divisão")
    print("5 - sair")

    opcao = int(input("\nEscolha a opção: "))

    if opcao == 5:
        print("Programa encerrado.")
        break  # Sai do loop

    if opcao in [1, 2, 3, 4]:  # Verifica se a opção é válida
        num1 = float(input("Digite o primeiro número: "))  # Usando float para aceitar decimais
        num2 = float(input("Digite o segundo número: "))

        if opcao == 1:
            resultado = num1 + num2
            print(f"\nResultado: {num1} + {num2} = {resultado}")
        elif opcao == 2:
            resultado = num1 - num2
            print(f"\nResultado: {num1} - {num2} = {resultado}")
        elif opcao == 3:
            resultado = num1 * num2
            print(f"\nResultado: {num1} * {num2} = {resultado}")
        elif opcao == 4:
            if num2 != 0:
                resultado = num1 / num2
                print(f"\nResultado: {num1} / {num2} = {resultado}")
            else:
                print("\nErro: divisão por zero!")

        # Pergunta se deseja continuar
        continuar = input("\nDeseja voltar ao menu? (s/n): ").strip().lower()
        if continuar != 's':
            print("Programa encerrado.")
            break
    else:
        print("\nOpção inválida! Tente novamente.")