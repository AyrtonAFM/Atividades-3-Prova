programa
{ 
	inclua biblioteca Matematica --> Mt
	
	funcao precisaoDePI(real precisao)
	{
		inteiro numeroDeInteracoes = 0, sinal = -1
		real valorDePi, numerador = 1.0, denominador = 1.0, somaDaSequencia = 0.0, raiz
		faca
		{
			somaDaSequencia-= numerador/(denominador*denominador*denominador)
			somaDaSequencia *=sinal
			denominador+=2
			numeroDeInteracoes++
			somaDaSequencia = Mt.valor_absoluto(somaDaSequencia)
			raiz = Mt.raiz(somaDaSequencia*32,3.0)
		}enquanto(numeroDeInteracoes <= 3)
		escreva("\nO valor de PI é = ",raiz)
	}
	
	funcao inicio()
	{ real precisao = 0.0

	escreva("----Determine o valor de PI = ∛( S * 32), a partir de S = 1/1^3 − 1/3^3 + 1/5^3 − … ---- \n")
	precisaoDePI(precisao)
	}
}
