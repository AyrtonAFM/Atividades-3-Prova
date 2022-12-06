programa
{

	funcao inteiro retornaNibbleQualqueDeUmNumeroInteiro(inteiro numero, inteiro posicaoDoNibble)
	{
		const inteiro NIBBLE = 4, DOUBLE_WORD = 32, MASCARA_SELETORA_DE_NIBBLES = 15
		inteiro nibbleNaPosicao, nibbleEscolhido, numeroDoNibble
		
		posicaoDoNibble = posicaoDoNibble - 1
		nibbleNaPosicao = numero >> posicaoDoNibble*NIBBLE
		numeroDoNibble = nibbleNaPosicao & MASCARA_SELETORA_DE_NIBBLES
		
		retorne numeroDoNibble
	}
	
	funcao inicio()
	{
		inteiro numero, posicaoDoNibble, numeroInteiroCorrespondenteAoNibble

		escreva("----RETORNAR UM INTEIRO CORRESPONDENTE A UM NIBBLE QUALQUER----\n\n")
		escreva("Digite um número para ver o NIBBLE desejado:\n")
		leia(numero)
		
		escreva("Qual posição do NIBBLE você quer? OBS:(entre 1 e 8):\n")
		leia(posicaoDoNibble)
		
		numeroInteiroCorrespondenteAoNibble = retornaNibbleQualqueDeUmNumeroInteiro(numero, posicaoDoNibble)
		escreva("O NÚMERO QUE REPRESENTA O ",posicaoDoNibble,"º NIBBLE DO NÚMERO ",numero," É: ",numeroInteiroCorrespondenteAoNibble,"\n")
	}
}
