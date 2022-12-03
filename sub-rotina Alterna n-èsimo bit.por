programa
{
	funcao inteiro alternaON_EsimoBit(inteiro numero, inteiro posicaoDoBit)
	{
		inteiro mascara, lsb=1
		mascara = lsb<<posicaoDoBit
		retorne numero ^ mascara
	}
	
	funcao inicio()
	{
		inteiro numero, posicaoDoBit
		escreva("----ALTERNA UM BIT QUALQUER----\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		escreva("Informe a posição do bit que deseja alternar:\n")
		leia(posicaoDoBit)
		escreva("O número em decimal após a operação:", alternaON_EsimoBit(numero, posicaoDoBit))
	}
}
