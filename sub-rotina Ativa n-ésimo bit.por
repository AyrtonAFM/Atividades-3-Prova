programa
{
	funcao inteiro ativeON_EsimoBit(inteiro numero, inteiro posicaoDoBit)
	{
		inteiro mascara, lsb=1
		mascara = lsb<<posicaoDoBit
		retorne numero | mascara
	}
	
	funcao inicio()
	{
		inteiro numero, posicaoDoBit
		escreva("----ATIVA UM BIT QUALQUER----\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		escreva("Informe a posição do bit que deseja ativa:\n")
		leia(posicaoDoBit)
		escreva("O número em decimal após a operaÇão: ", ativeON_EsimoBit(numero, posicaoDoBit))
	}
}
