# 15. Uma loja tem tem uma política de descontos de acordo com o valor da compra do cliente. Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00 o cliente ganha 1% de desconto cumulativo até 25%.
# Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…
# Faça um programa que exiba essa tabela de descontos no seguinte formato:
# Valordacompra – porcentagem de desconto – valor final

for valor in range(500,3100,100):
   desconto = min((valor - 500) // 100 + 1, 25)
   valor_final = valor - (valor * (desconto / 100))
   print(f"O valor da compra é {valor}, o valor de desconto é {desconto} e o valor final é {valor_final}")