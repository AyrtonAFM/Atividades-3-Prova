programa
{

	funcao trocaElementosDeUmVetor(real vetor[], inteiro posicaoPrimeiroElemento, inteiro posicaoSegundoElemento)
	{
		real auxiliaDoVetor
		
		auxiliaDoVetor = vetor[posicaoPrimeiroElemento]
		vetor[posicaoPrimeiroElemento] = vetor[posicaoSegundoElemento]
		vetor[posicaoSegundoElemento] = auxiliaDoVetor
	}
	
	funcao ordenaVetorRecursivo(real vetor[], inteiro numeroDeElementos)
	{
		para(inteiro elemento = 0; elemento < numeroDeElementos - 1; elemento++)
		{
			se(vetor[elemento] > vetor[elemento + 1])
			{
				trocaElementosDeUmVetor(vetor, elemento, elemento + 1)
			}
		}
		
		se(numeroDeElementos - 1 > 1)
		{
			ordenaVetorRecursivo(vetor, numeroDeElementos - 1)
		}
	}
	
	funcao exibirVetorComNovaLinha(real vetor[], inteiro numeroDeElementos)
	{
		exibirVetor(vetor, numeroDeElementos)
		escreva("\n")
	}
	
	funcao exibirVetor(real vetor[], inteiro numeroDeElementos)
	{
		para(inteiro elemento = 0; elemento < numeroDeElementos; elemento++)
		{
			escreva("( ",vetor[elemento]," ) ")
		}
	}
	
	funcao inicio()
	{
		const inteiro ELEMENTOS_NO_VETOR = 10
		real vetor[ELEMENTOS_NO_VETOR] = {4.0,7.0,5.0,3.0,6.0,9.0,1.0,8.0,10.0,2.0}
		
		escreva("OS ELEMENTOS DO VETOR SÃO:\n")
		exibirVetor(vetor, ELEMENTOS_NO_VETOR)
		
		ordenaVetorRecursivo(vetor, ELEMENTOS_NO_VETOR)
		
		escreva("\n\nO VETOR ORDENADO É:\n")
		exibirVetorComNovaLinha(vetor, ELEMENTOS_NO_VETOR)
	}
}
