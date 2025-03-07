# 9. Contar quantos números pares o usuário digitar. O programa deve contar quantos números pares o usuário inseriu. O usuário para digitando -1.

contador = 0
numero = int(input("Digite um número: "))

while numero != -1:
    if numero % 2 == 0:
        contador += 1
        numero = int(input("Digite um número novamente ou insira -1 para finalizar: "))
    else:
       numero = int(input("Digite um número novamente ou insira -1 para finalizar: "))
print("Quantidade de pares é:", contador)
     