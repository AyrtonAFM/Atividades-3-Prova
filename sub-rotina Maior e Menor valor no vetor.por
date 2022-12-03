programa
{
	inclua biblioteca Util --> Ut

	funcao lerVetor(real vetor[], inteiro n)
	{
		para(inteiro i = 0; i < n; i++)
		{
			leia(vetor[i])
		}
	}

	funcao real obterMaiorElemento(real vetor[], inteiro n)
	{
		real maior = vetor[0]

		para(inteiro i = 1; i < n; i++)
		{
			se(vetor[i] > maior)
			{
				maior = vetor[i] //Atualizo a referência
			}
		}

		retorne maior
	}

	funcao real obterMenorElemento(real vetor[], inteiro n)
	{
		real menor = vetor[0]

		para(inteiro i = 1; i < n; i++)
		{
			se(vetor[i] < menor)
			{
				menor = vetor[i] //Atualizo a referência
			}
		}

		retorne menor
	}	

	funcao exibirVetor(real vetor[], inteiro n)
	{
		para(inteiro i = 0; i < n; i++)
		{
			escreva(vetor[i]," ")
		}
	}	

	funcao exibirVetorComNovaLinha(real vetor[], inteiro n)
	{
		exibirVetor(vetor,n)
		escreva("\n")
	}
		
	funcao inicio()
	{
		const inteiro TAMANHO_DO_VETOR = 5
		real vetor[TAMANHO_DO_VETOR]
		inteiro numeroDeElementos = Ut.numero_elementos(vetor)

		escreva("----MENOR E MAIOR VALOR EM UM VETOR----\n\n")
		
		escreva("Informe os ",TAMANHO_DO_VETOR," elementos do vetor: \n")
		lerVetor(vetor,TAMANHO_DO_VETOR)
			
		escreva("Os elementos do vetor:\n")
		exibirVetorComNovaLinha(vetor,numeroDeElementos)

		real maior = obterMaiorElemento(vetor,numeroDeElementos)
		escreva("\nO maior elemento do vetor: ",maior,"\n")

		real menor = obterMenorElemento(vetor,numeroDeElementos)
		escreva("\nO menor elemento do vetor: ",menor,"\n")		
	}
}
