# 13. Faça um programa que peça 10 números inteiros, calcule e mostre a quantidade de números pares e a quantidade de números impares.
pares = 0
impares = 0
for n in range(10):
    numero=int(input("Digite um número: "))
if numero % 2 == 0:
    pares += n
    print("Essa é a quantidade de pares", pares)