# 7. Adivinhe o número secreto (de 1 a 10). O usuário deve tentar adivinhar um número até acertar. (Declare um valor e receba outro)

secreto = 5
tentativa = 0

tentativa = int(input("Adivinhe o número secreto de 1 até 10: "))
while tentativa != secreto:
    tentativa = int(input("Adivinhe o número secreto de 1 até 10, novamente: "))
print("Você Acertou")