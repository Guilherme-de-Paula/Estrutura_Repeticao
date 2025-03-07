# 5. Faça um programa que receba um número e usando laços de repetição calcule e mostre a tabuada desse número.
num1=int(input("Informe um número: "))
for n in range(0,11):
    print(f"{num1} X {n} = {num1 * n}")