programa
{
	funcao inteiro limpeON_EsimoBit(inteiro numero, inteiro posicaoDoBit)
	{
		inteiro mascara, lsb=1
		mascara = ~(lsb<<posicaoDoBit)
		retorne numero & mascara
	}
	
	funcao inicio()
	{
		inteiro numero, posicaoDoBit
		escreva("----LIMPA UM BIT QUALQUER----\n\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		escreva("Informe qual bit deseja limpa:\n")
		leia(posicaoDoBit)
		escreva("O número em decimal após a operação: ", limpeON_EsimoBit(numero, posicaoDoBit))
	}
}
