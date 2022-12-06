programa
{

	funcao logico buscaBinariaRecursiva(real vetor[], inteiro posicaoDoUltimoElemento, inteiro posicaoDoPrimeiroElemento, real numeroBuscado)
	{
		inteiro meio
		
		se(posicaoDoUltimoElemento < posicaoDoPrimeiroElemento)
		{
			retorne falso
		}
		
		meio = posicaoDoPrimeiroElemento + (posicaoDoUltimoElemento - posicaoDoPrimeiroElemento) / 2
		
		se(vetor[meio] == numeroBuscado)
		{
			retorne verdadeiro
		}
		senao se (vetor[meio] < numeroBuscado)
		{
			retorne buscaBinariaRecursiva(vetor, posicaoDoUltimoElemento, meio + 1, numeroBuscado)
		}
		senao
		{
			retorne buscaBinariaRecursiva(vetor, meio - 1, posicaoDoPrimeiroElemento, numeroBuscado)
		}
	}

	funcao trocaElementosDeUmVetor(real vetor[], inteiro posicaoPrimeiroElemento, inteiro posicaoSegundoElemento)
	{
		real aux
		
		aux = vetor[posicaoPrimeiroElemento]
		vetor[posicaoPrimeiroElemento] = vetor[posicaoSegundoElemento]
		vetor[posicaoSegundoElemento] = aux
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
			escreva(vetor[elemento]," ")
		}
	}
	
	funcao inicio()
	{
		const inteiro QUANTIDADE_DE_ELEMENTOS = 10
		real vetor[QUANTIDADE_DE_ELEMENTOS] = {4.0,8.0,3.0,9.0,1.0,7.0,2.0,6.0,10.0,5.0}, numeroQueProcura
		inteiro posicaoDoUltimoElemento = QUANTIDADE_DE_ELEMENTOS - 1, posicaoDoPrimeiroElemento = 0
		logico numeroDaBuscaEstahNoVetor

		escreva("----BUSCA BINÁRIA RECURSIVA----\n\n")

		escreva("O vetor possui os seguintes elementos:\n")
		exibirVetorComNovaLinha(vetor, QUANTIDADE_DE_ELEMENTOS)
		
		escreva("\nQual número você quer saber se existe no vetor?\n")
		leia(numeroQueProcura)
		
		ordenaVetorRecursivo(vetor, QUANTIDADE_DE_ELEMENTOS)
		numeroDaBuscaEstahNoVetor = buscaBinariaRecursiva(vetor, posicaoDoUltimoElemento, posicaoDoPrimeiroElemento, numeroQueProcura)
		
		escreva("\n",numeroQueProcura," ESTÁ NO VETOR? ",numeroDaBuscaEstahNoVetor)
		escreva("\n")
	}
}
