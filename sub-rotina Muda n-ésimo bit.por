{
	funcao mudaOvalorDeUmBitQualquer(inteiro numero, inteiro posicaoDoBit, inteiro valorDoBit,inteiro resultado )
	{
		inteiro mascara, lsb=1
		inteiro negacacaoControlada = numero ^ -valorDoBit
		mascara = lsb<<posicaoDoBit
		mascara = negacacaoControlada & mascara
		resultado = numero ^ mascara
		escreva("O número em decimal após a operação é: ",resultado)
	}
	
	funcao inicio()
	{
		inteiro numero, posicaoDoBit, valorDoBit, resultado = 0

		escreva("----MUDA UM BIT QUALQUER----\n\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		escreva("Informe qual bit deseja mudar:\n")
		leia(posicaoDoBit)
		escreva("Informe o valor do bit que deseja mudar:\n")
		leia(valorDoBit)
		mudaOvalorDeUmBitQualquer(numero, posicaoDoBit, valorDoBit, resultado)
	}
}
