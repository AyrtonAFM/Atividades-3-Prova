programa
{
	funcao lerVetor(inteiro vetor[], inteiro numeroDeElementos)
	{
		para(inteiro i = 0; i < numeroDeElementos; i++)
		{
			leia(vetor[i])
		}
	}

	funcao ordemDecrescente(inteiro& vetor[], inteiro numeroDeElementos)
	{
		inteiro trocou = 1
		inteiro auxiliarVetor
		
		enquanto(trocou==1) // processamento da ordem do vetor
		{
			trocou = 0
			para(inteiro i=0;i<numeroDeElementos-1;i++)
			{
				se(vetor[i] < vetor[i+1])
				{
					auxiliarVetor = vetor[i]
					vetor[i] = vetor[i+1]
					vetor[i+1] = auxiliarVetor
					trocou = 1
				}
			}
		}
	}
	
	
	funcao escreverVetor(inteiro vetor[], inteiro numeroDeElementos)
	{
		para(inteiro i = 0; i < numeroDeElementos; i++)
		{
			escreva(vetor[i]," ")
		}
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_DE_ELEMENTOS = 5
		inteiro vetor[NUMERO_DE_ELEMENTOS]
		
		escreva("----ORDENAR VETOR NA ORDEM DESCRESCENTE----\n\n")
		
		escreva("Informe os ",NUMERO_DE_ELEMENTOS," elementos do vetor: \n")
		lerVetor(vetor, NUMERO_DE_ELEMENTOS)
		ordemDecrescente(vetor, NUMERO_DE_ELEMENTOS)
		
		escreva("\nOs ",NUMERO_DE_ELEMENTOS," elementos do vetor em ordem DECRESCENTE são:\n")
		escreverVetor(vetor, NUMERO_DE_ELEMENTOS)
	}
}
