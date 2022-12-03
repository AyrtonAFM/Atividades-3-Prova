programa
{
	funcao lerMatriz(real matriz[][], inteiro numeroDeLinhas, inteiro numeroDeColunas)
	{
		para(inteiro i=0; i<numeroDeLinhas; i++)
		{
			para(inteiro j=0;j<numeroDeColunas; j++)
			{
				leia(matriz[i][j])
			}
		}
	}
	
	
	funcao somaDaMatrizAComMatrizB(real matrizSoma[][] ,inteiro linhasMatrizSoma, inteiro colunasMatrizSoma, real matrizA[][],inteiro numeroDeLinhasA, inteiro numeroDeColunasA,real matrizB[][],inteiro numeroDeLinhasB, inteiro numeroDeColunasB)
	{
		para(inteiro i = 0; i < linhasMatrizSoma; i++)
		{
			para(inteiro j = 0; j < colunasMatrizSoma; j++)
			{
				matrizSoma[i][j] = matrizA[i][j] + matrizB[i][j]
			}
		}				

	}
	
	funcao escreverMatriz(real mat[][], inteiro numeroDeLinhas, inteiro numeroDeColunas)
	{
		para(inteiro i=0; i<numeroDeLinhas; i++)
		{
			para(inteiro j=0;j<numeroDeColunas; j++)
		{
			escreva(mat[i][j]," ")
		}
		escreva("\n")
	     }
	}
	
	funcao inicio()
	{
		inteiro NUMERODELINHAS = 100
		inteiro NUMERODECOLUNAS = 100
		inteiro linhas, colunas
		real matrizProduto[100][100], matrizA[100][100], matrizB[100][100]
		
		escreva("----Calculando o produto de matrizes----\n")
		
		escreva("QUAL SERÁ A QUANTIDADE DE LINHAS NAS MATRIZES?\n")
		leia(linhas)
		
		escreva("QUAL SERÁ A QUANTIDADE DE COLUNAS NAS MATRIZES?\n")
		leia(colunas)

		escreva("\nDigite os valores da matriz A ",linhas," x ",colunas,": \n")
		lerMatriz(matrizA,linhas,colunas)

		escreva("\nDigite os valores da matriz B ",linhas," x ",colunas,": \n")
		lerMatriz(matrizB,linhas,colunas)
		
		escreva("\nA SOMA2 DAS MATRIZES É:\n")
		somaDaMatrizAComMatrizB(matrizProduto, linhas ,colunas, matrizA, linhas ,colunas,matrizB, linhas ,colunas)
		escreverMatriz(matrizProduto,linhas,colunas)
	}
}
