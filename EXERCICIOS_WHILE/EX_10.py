# 10. Apenas aceitar números positivos. O programa deve continuar pedindo um número até o usuário digitar um número positivo.

numero = int(input("Digite um número: "))

while numero < 0:
    print("Tente Novamente")
    numero = int(input("Digite um número: "))
    numero >= 0
print("Fim!")