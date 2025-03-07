# 1. Faça um programa que leia 5 números e informe o maior número. 
contador = 0
for n in range(5):
    num=int(input("Digite um número: "))
    if contador is 0 or num > contador:
        contador = num
print("Esse é o maior número:",contador)