programa
{
	funcao inteiro calculoDoFatorial(inteiro n)
	{
		se(n==0 ou n==1)
		retorne 1
		senao
		{
			retorne n * calculoDoFatorial(n-1)
		}
	}
	
	funcao inicio()
	{
		inteiro numero

		escreva("----FATORIAL RECURSIVO----\n\n")
		escreva("Informe o valor do numero que deseja calcular o fatorial:\n")
		leia(numero)
		inteiro resultado = calculoDoFatorial(numero)
		escreva(" O valor do fatorial é: ",resultado,"!")
	}
}
