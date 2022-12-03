programa
{
	funcao lerMatriz(real & matriz[][], inteiro numeroDeLinha, inteiro numeroDeColuna)
	{
		para(inteiro i=0; i<numeroDeLinha; i++)
		{
			para(inteiro j=0;j<numeroDeColuna; j++)
			{
				leia(matriz[i][j])
			}
		}
	}
	
	
	funcao comparandoMatrizAComMatrizB(real matrizA[][],inteiro numeroDeLinha, inteiro numeroDeColuna,real matrizB[][],inteiro numeroDeLinhaB, inteiro numeroDeColunaB, logico saoIguais)
	{
		para(inteiro i=0; i<numeroDeLinha; i++)
		{
			para(inteiro j=0;j<numeroDeColuna; j++)
			{
				saoIguais = saoIguais e matrizA[i][j] == matrizB[i][j]
			}
		}
		
		se(saoIguais)
		{
			escreva("\n---As matrizes são IGUAIS---")
		}
		senao
		{
			escreva("\n---As matrizes são DIFERENTES---")
		}
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_DE_LINHAS = 2
		const inteiro NUMERO_DE_COLUNAS = 2
		logico saoIguais = verdadeiro
		real matrizA[NUMERO_DE_LINHAS ][NUMERO_DE_COLUNAS], matrizB[NUMERO_DE_LINHAS ][NUMERO_DE_COLUNAS]

		escreva("----COMPARAÇÃO DE ELEMENTOS DE DUAS MATRIZES----\n\n")

		escreva("AS MATRIZES SÃO DE DIMENSÃO 2X2\n")
		
		escreva("Digite os valores da PRIMEIRA matriz:\n")
		lerMatriz( matrizA, NUMERO_DE_LINHAS ,NUMERO_DE_COLUNAS)
		
		escreva("\nDigite o valor da SEGUNDA matriz:\n")
		lerMatriz( matrizB, NUMERO_DE_LINHAS ,NUMERO_DE_COLUNAS)
		
		escreva("\nComparando a PRIMEIRA matriz de ",NUMERO_DE_LINHAS," x ", NUMERO_DE_COLUNAS," com a SEGUNDA matriz de ",NUMERO_DE_LINHAS," x ", NUMERO_DE_COLUNAS," vemos que:\n")
		comparandoMatrizAComMatrizB(matrizA,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS,matrizB,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS, saoIguais)
	}
}
