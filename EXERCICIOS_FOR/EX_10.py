# 10. Uma loja deseja cadastrar 5 clientes e verificar se o faturamento da loja A foi superior a loja B (faturamento = 54000). Se o faturamento atingir esse valor mostre na tela uma mensagem contendo em quanto foi superado o faturamento.
soma = 0
for c in range(1,6):
    cliente=int(input("Digite o seu valor: "))
    soma += cliente
if soma > 54000:
 diferenca = soma - 54000
 print("O faturamento foi superado")
        
else:
 print("O faturamento não foi superado")