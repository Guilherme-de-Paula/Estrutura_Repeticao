# 16. Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
# a) A quantidade de pessoas em cada faixa etária;
# b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas:
#  Até 15 anos
#  De 16 a 30 anos
#  De 31 a 45 anos
#  De 46 a 60 anos
#  Acima de 61 anos

faixa1 = 0
faixa2 = 0
faixa3 = 0
faixa4 = 0
faixa5 = 0

for i in range(15):
    idade=int(input("Informe sua idade: "))
    if idade <= 15:
        faixa1 += 1
    elif idade <= 30:
        faixa2 += 1
    elif idade <= 45:
        faixa3 += 1
    elif idade <= 60:
        faixa4 += 1
    else:
        faixa5 += 1
print(f"Até 15 anos: {faixa1}")
print(f"De 16 a 30 anos: {faixa2}")
print(f"De 31 a 45 anos: {faixa3}")
print(f"De 46 a 60 anos: {faixa4}")
print(f"Acima de 61 anos: {faixa5}")

porcentagem_faixa1=(faixa1 / 15) * 100
porcentagem_faixa5=(faixa5 / 15) * 100

print(f"Até 15 anos: {porcentagem_faixa1}")
print(f"Acima de 61 anos: {porcentagem_faixa5}")