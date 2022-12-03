programa
{
	funcao exibirBinario(inteiro numero)
	{
	    const inteiro LSB = 1 // posição
	    const inteiro NUMERODEBITS = 32 //bits
	    
	    inteiro posicaoSelecionadaDoBit = NUMERODEBITS - 1 
	    
	    faca
	    {
	        inteiro bitDaPosicaoSelecionadaNoLSB = numero >> posicaoSelecionadaDoBit  
	        inteiro lsbSelecionado = bitDaPosicaoSelecionadaNoLSB & LSB
	        escreva(lsbSelecionado)
	        posicaoSelecionadaDoBit--
	        
	    }enquanto(posicaoSelecionadaDoBit >=0)
	}
	
	funcao logico verificandoSeEPotenciaDe2(inteiro numero)
	{
		logico ePotenciaDe2 = (numero!= 0) e nao ((numero & (numero - 1))!= 0)
		
		se(ePotenciaDe2 == falso)
		{
			escreva("\nNão é potencia de 2!!\n\n")
		}
		senao se(ePotenciaDe2 == verdadeiro)
		{
			escreva("\nÉ potencia de 2!!\n\n")
		}
		
		retorne ePotenciaDe2
	}
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("----Testando se um número é potência de 2---- \n\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		verificandoSeEPotenciaDe2(numero)

		escreva("O numero ", numero , " em BASE BINÁRIA É\n(")
		exibirBinario(numero)
		escreva(")\n")
		
	}
}
