programa
{
	funcao valorDeH()
	{
		real somatorio=0.0,x=1.0
		inteiro contagemDeIteracoes = 1

		enquanto(contagemDeIteracoes<=10)
		{
			somatorio+= x / (x*x)
			contagemDeIteracoes++
			x++
		}

		escreva("O somatório de H é: ",somatorio)	
	}
	funcao inicio()
	{
		escreva("----PROGRAMA PARA CALCULAR H----\n\n")
		
		valorDeH()
	}
}

