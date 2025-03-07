# 14. Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.
nota=float(input("Informe sua nota: "))
for e in range(0,3):
    if nota >= 0 or nota >= 10:
        nota=float(input("Informe uma nota válida: "))
    else:
      print("Nota válida")
