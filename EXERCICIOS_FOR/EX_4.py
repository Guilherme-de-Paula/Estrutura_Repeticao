# 4. Faça um programa que leia 5 números e informe a soma e a média dos números.
soma = 0
for n in range(5):
  numero=int(input("Digite o número: "))
  soma += numero

media = soma / 5

print(f"A soma dos números é: {soma}")
print(f"A média dos números é: {media}")
    
