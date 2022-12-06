programa
{
	inclua biblioteca Matematica --> mat
	funcao somatorioDePi( real& somatorio)
	{
		somatorio = 0.0
		real sinal = 1.0
		para(inteiro denominador = 1; denominador <= 10; denominador = denominador + 2)
		{
			somatorio += sinal * 4 / denominador
			sinal*= -1
		}
	}
	
	funcao inicio()
	{
		real resultadoDoSomatorio = 0.0
		somatorioDePi(resultadoDoSomatorio)
		escreva("O VALOR DE PI É: ",resultadoDoSomatorio)
	}
}
