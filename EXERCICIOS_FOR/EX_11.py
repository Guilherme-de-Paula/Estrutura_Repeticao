# 11. Faça um programa que peça para n pessoas a sua idade, ao final o programa deverá verificar se a média de idade da turma varia entre 0 e 25,26 e 60 e maior que 60; e então, dizer se a turma é jovem, adulta ou idosa, conforme a média calculada.
soma = 0
for i in range(5):
    idade=int(input("Digite sua idade: "))
    soma += idade
    media = soma / 5
if media >= 0 and media <= 25:
        print("Jovem")
elif media >= 26 and media <= 60:
        print("Adulta")
else:
        print("Idosa")