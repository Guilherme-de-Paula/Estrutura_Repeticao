# 12. Numa eleição existem três candidatos. Faça um programa que peça o número total de eleitores. Peça para cada eleitor votar e ao final mostrar o número de votos de cada candidato.
candidato1 = 0
candidato2 = 0
candidato3 = 0

num_eleitores=int(input("Informe o número de eleitores: "))

for e in range(num_eleitores):
    print(f"Eleitor {e + 1}:")
    voto= int(input("Digite o número do candidato (1,2 ou 3): "))
    if voto == 1:
        candidato1 += 1
    elif voto == 2:
        candidato2 += 1
    elif voto == 3:
        candidato3 += 1
    else:
        print("Voto inválido")
print(f"Candidato 1: {candidato1} votos")
print(f"Candidato 2: {candidato2} votos")
print(f"Candidato 3: {candidato3} votos")
