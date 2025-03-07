# 9. Faça um programa que peça um número inteiro e determine se ele é ou não um número primo. Um número primo é aquele que é divisível somente por ele mesmo e por 1.

numero=int(input("Digite um número: "))
if numero < 2:
    print("Não é primo")
else:
    for i in range(2, numero):
        if numero % i == 0:
            print("Não é primo")
            break
    else:
        print("É primo")
    
           