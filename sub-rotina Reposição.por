programa
{
	inclua biblioteca Matematica --> m
	
	funcao entradaDoConjuntoXNoIntervalo(real conjuntoX[][], inteiro numeroDeLinhas, inteiro numeroDeColunas)
	{
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{
			para(inteiro j = 0; j < numeroDeColunas; j++)
			{
				leia(conjuntoX[i][j])
			}
		}		
	}

	funcao armazenamentoConjuntoY(real conjuntoX[][], inteiro numeroDeLinhas, inteiro numeroDeColunas, inteiro posicaoDoVetor, real vetorY[],real ValorDeY,real ElementoDaMatriz)
	{
		
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{	
			
			para(inteiro j=0; j<numeroDeColunas;j++)
			{	ElementoDaMatriz=conjuntoX[i][j]
				vetorY[posicaoDoVetor] = ElementoDaMatriz
				posicaoDoVetor++
			}
			
		}
	}
	funcao testandoIgualdadeDosElementosDoVetor(real conjuntoY[], inteiro NUMERO_MAXIMO_NO_VETOR, logico iguais,real vetorY[], inteiro posicaoDoVetor)
	{
		logico elementoIguail = verdadeiro
		real ProdutoDoVetor = 1.0
		
		para(inteiro i = 0; i < NUMERO_MAXIMO_NO_VETOR; i++)
		{
			para(inteiro indice = 1; indice < NUMERO_MAXIMO_NO_VETOR; indice++)
			{
				elementoIguail = conjuntoY[indice]==conjuntoY[i]
				iguais = iguais e conjuntoY[indice]==conjuntoY[i]
			}
		}
		se(iguais)
		{
			escreva("\n\nOs elementos do vetor são IGUAIS: \n")
			
			para(inteiro i = 0; i < NUMERO_MAXIMO_NO_VETOR; i++)
			{
	
				escreva(conjuntoY[posicaoDoVetor],"\t")
				posicaoDoVetor++
			}	
			escreva("\n")
			
		}
		senao
		{
			escreva("\n\nOs elementos do vetor são DIFERENTES \n\n")
			escreva("LOGO O PRODUTO DO VETOR É: ")
			
			para(inteiro i=0; i<NUMERO_MAXIMO_NO_VETOR;i++)
			{	ProdutoDoVetor*= vetorY[posicaoDoVetor]
				posicaoDoVetor++
			}
			escreva(ProdutoDoVetor,"\n")
		}
	}

	funcao exibirConjuntoMatriz (real conjuntoX[][],inteiro NUMERO_DE_LINHAS, inteiro NUMERO_DE_COLUNAS)
	{
		
		para(inteiro i = 0; i <  NUMERO_DE_LINHAS; i++)
		{
			para(inteiro j = 0; j <  NUMERO_DE_COLUNAS; j++)
			{
				escreva(conjuntoX[i][j]," ")
			}
			escreva("\n")
		}		
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_MAXIMO_NO_VETOR = 4
		const inteiro NUMERO_DE_LINHAS = 2, NUMERO_DE_COLUNAS = 2
		real conjuntoX[NUMERO_DE_LINHAS][NUMERO_DE_COLUNAS]
		real conjuntoY[NUMERO_MAXIMO_NO_VETOR],ValorDeY=0.0,ElementoDaMatriz=0.0
		inteiro posicaoDoVetor=0
		logico iguais = verdadeiro
		
		escreva("----EXIBIÇÃO DOS ELEMENTOS DE UMA MATRIZ ARMAZENADOS EM UM VETOR\n\n")
		escreva("A MATRIZ É 2x2\n\n")
		
		escreva("\nEntre com os elementos da matriz ", NUMERO_DE_LINHAS,"x",NUMERO_DE_COLUNAS,"\n")
		entradaDoConjuntoXNoIntervalo(conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS)

		escreva("\nOs elementos da matriz ", NUMERO_DE_LINHAS,"x",NUMERO_DE_COLUNAS," são:\n")
		
		armazenamentoConjuntoY(conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS,posicaoDoVetor,conjuntoY,ValorDeY,ElementoDaMatriz)
		
		exibirConjuntoMatriz (conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS)
		
		testandoIgualdadeDosElementosDoVetor(conjuntoY,NUMERO_MAXIMO_NO_VETOR,iguais,conjuntoY,posicaoDoVetor)

	}
}
