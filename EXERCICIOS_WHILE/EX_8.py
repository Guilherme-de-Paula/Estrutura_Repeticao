# 8. Encontrando o maior número inserido pelo usuário. Peça números ao usuário e, ao digitar 0, exiba o maior número inserido.

maior = 0
num = float(input("Digite um número: ( 0 para sair)"))

while num != 0:
    if num > maior:
        maior = num
    else:
        num = float(input("Digitr um nùmero: ( 0 para sair)"))

print(f" O maior número digitado foi {maior}")



