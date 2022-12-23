programa
{
	funcao inicio()
	{
		const inteiro NUMERO_MAXIMO_NO_VETOR = 4
		const inteiro NUMERO_DE_LINHAS = 2, NUMERO_DE_COLUNAS = 2
		real matriz[NUMERO_DE_LINHAS][NUMERO_DE_COLUNAS]
		real vetor[NUMERO_MAXIMO_NO_VETOR],ValorDeY=0.0,ElementoDaMatriz=0.0
		inteiro posicaoDoVetor=0
		logico iguais = verdadeiro
		caracter opcao
		
		escreva("MENU DE OPÇÕES EM UMA MATRIZ\n\n")
		escreva("|a| inserir elementos da matriz\n")
		escreva("|b| copia/produto/exibição em um vetor\n")
		escreva("|c| encerrar o programa\n")

		escreva("\nQual opção você quer?\n")
		leia(opcao)
		
		opcoes(opcao,matriz,posicaoDoVetor,vetor,iguais,ValorDeY,ElementoDaMatriz)
	}

	funcao lerMatriz(real matriz[][], inteiro numeroDeLinhas, inteiro numeroDeColunas)
	{
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{
			para(inteiro j = 0; j < numeroDeColunas; j++)
			{
				leia(matriz[i][j])
			}
		}		
	}

	funcao armazenamentoConjuntoY(real matriz[][], inteiro numeroDeLinhas, inteiro numeroDeColunas, inteiro posicaoDoVetor, real vetor[],real ValorDeY,real ElementoDaMatriz)
	{
		
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{	
			
			para(inteiro j=0; j<numeroDeColunas;j++)
			{	ElementoDaMatriz=matriz[i][j]
				vetor[posicaoDoVetor] = ElementoDaMatriz
				posicaoDoVetor++
			}
			
		}
	}
	funcao verificarDiferenca(real conjuntoY[], inteiro NUMERO_MAXIMO_NO_VETOR, logico iguais,real vetor[], inteiro posicaoDoVetor)
	{
		logico elementoIgual = verdadeiro
		real ProdutoDoVetor = 1.0
		
		para(inteiro i = 0; i < NUMERO_MAXIMO_NO_VETOR; i++)
		{
			para(inteiro indice = 1; indice < NUMERO_MAXIMO_NO_VETOR; indice++)
			{
				elementoIgual = conjuntoY[indice]==conjuntoY[i]
				iguais = iguais e conjuntoY[indice]==conjuntoY[i]
			}
		}
		se (iguais)
		{
		}
		senao
		{
			escreva("\n\nOs elementos do vetor são DIFERENTES \n\n")
			escreva("O PRODUTO DO VETOR É: ")
			
			para(inteiro i=0; i<NUMERO_MAXIMO_NO_VETOR;i++)
			{	ProdutoDoVetor*= vetor[posicaoDoVetor]
				posicaoDoVetor++
			}
			escreva(ProdutoDoVetor,"\n")
		}
	}
	funcao exibirVetor(real vetor[], inteiro NUMERO_MAXIMO_NO_VETOR, inteiro posicaoDoVetor)
	{
		escreva("\nOS ELEMENTOS DO VETOR SÃO:\n")
		
		para(inteiro i = 0; i < NUMERO_MAXIMO_NO_VETOR; i++)
			{
	
				escreva(vetor[posicaoDoVetor],"\t")
				posicaoDoVetor++
			}	
			escreva("\n")
	}

	funcao exibirMatriz (real matriz[][],inteiro NUMERO_DE_LINHAS, inteiro NUMERO_DE_COLUNAS)
	{
		escreva("\nOS ELEMENOS NA MATRIZ SÃO:\n")
		para(inteiro i = 0; i <  NUMERO_DE_LINHAS; i++)
		{
			para(inteiro j = 0; j <  NUMERO_DE_COLUNAS; j++)
			{
				escreva(matriz[i][j]," ")
			}
			escreva("\n")
		}		
	}

	funcao opcoes (caracter opcao,real matriz[][], inteiro posicaoDoVetor, real vetor[],logico iguais, real ValorDeY,real ElementoDaMatriz)
	{
		const inteiro NUMERO_MAXIMO_NO_VETOR = 4
		const inteiro NUMERO_DE_LINHAS = 2, NUMERO_DE_COLUNAS = 2

		faca
		{
			escolha(opcao)
			{
				caso 'a':
				caso 'A':
				escreva("\nEscreva os valores da matriz", NUMERO_DE_LINHAS,"x",NUMERO_DE_COLUNAS,"\n")
				lerMatriz(matriz,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS)
				escreva("ELEMENTOS INSERIDOS\n\n")
				pare
	
				caso 'b':
				caso 'B':
				armazenamentoConjuntoY(matriz,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS,posicaoDoVetor,vetor,ValorDeY,ElementoDaMatriz)
				verificarDiferenca(vetor,NUMERO_MAXIMO_NO_VETOR,iguais,vetor,posicaoDoVetor)
				exibirMatriz (matriz,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS)
				exibirVetor(vetor,NUMERO_MAXIMO_NO_VETOR,posicaoDoVetor)
				pare

				caso 'c':
				caso 'C':
				
				escreva("OK!! PROGRAMA ENCERRADO!!")
				retorne
			}
			
			escreva("\nQual opção você quer?\n")
			escreva("|a| inserir elementos da matriz\n")
			escreva("|b| copia/produto/exibição em um vetor\n")
			escreva("|c| encerrar o programa\n")
			leia(opcao)
			
		}enquanto (opcao == 'a' ou opcao == 'A' ou opcao == 'b' ou opcao == 'B' ou opcao == 'c' ou opcao == 'C') 
		
	}
}
