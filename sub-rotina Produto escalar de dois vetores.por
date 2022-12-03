programa
{
	funcao lerVetor(real vetor[], inteiro tamanho)
	{
		para(inteiro i = 0; i < tamanho; i++)
		{
			leia(vetor[i])
		}
	}

	funcao escreverVetor(real vetor[], inteiro tamanho)
	{
		para(inteiro i = 0; i < tamanho; i++)
		{
			escreva(vetor[i]," ")
		}
		escreva("\n")
	}

	funcao real calcularProdutoEscalar(real vetor1[], real vetor2[], inteiro tamanho)
	{
		real produtoEscalar = 0.0
		para(inteiro i = 0; i < tamanho; i++)
		{
			produtoEscalar+= vetor1[i] * vetor2[i]
		}
		retorne produtoEscalar
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_DE_ELEMENTOS = 3
		real vetor1[NUMERO_DE_ELEMENTOS], vetor2[NUMERO_DE_ELEMENTOS]

		escreva("----PRODUTO ESCALAR DE DOIS VETORES----\n\n")
		
		escreva("Entre com os ",NUMERO_DE_ELEMENTOS," elementos do vetor 1\n")
		lerVetor(vetor1,NUMERO_DE_ELEMENTOS)
		
		escreva("Entre com os ",NUMERO_DE_ELEMENTOS," elementos do vetor 2\n")
		lerVetor(vetor2,NUMERO_DE_ELEMENTOS)

		real produtoEscalar = calcularProdutoEscalar(vetor1,vetor2,NUMERO_DE_ELEMENTOS)		
		escreva("O produto escalar é ",produtoEscalar)		
	}
}
