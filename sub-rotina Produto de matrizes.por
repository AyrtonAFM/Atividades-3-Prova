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
	
	funcao logico produtoPossivel(inteiro ncA, inteiro nlB )
	{
		logico diferente = ncA != nlB
		se(diferente )
		{
			escreva("O produto não é possivel, numero de linhas da matriz B é diferente do número de colunas da matriz A : \n")
		}
		retorne diferente
	}
	
	funcao produtoDaMatrizAComMatrizB(real matProduto[][] ,inteiro nlmats, inteiro ncmats, real matA[][],inteiro nlA, inteiro ncA,real matrizB[][],inteiro nlB, inteiro ncB)
	{
		para(inteiro i=0; i<nlA; i++)
		{
			para(inteiro j=0;j<ncB; j++)
			{
				matProduto[i][j] = 0.0
				para(inteiro k=0; k<ncA; k++)
				{
					matProduto[i][j] +=matA[i][k] * matrizB[k][j]
				}
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
		inteiro linhas, colunas, linhasB, colunasB
		real matrizProduto[100][100], matrizA[100][100], matrizB[100][100]
		
		escreva("----Calculando o produto de matrizes----\n")
		
		escreva("Digite as dimenções da matriz!!! \n\n")
		escreva("Digite o numero de linhas da matriz A: \n")
		leia(linhas)
		
		escreva("Digite o numero de colunas da matriz A: \n")
		leia(colunas)
		
		escreva("Digite o numero de linhas da matriz B: \n")
		leia(linhasB)
		
		escreva("Digite o numero de colunas da matriz B: \n")
		leia(colunasB)

		escreva("\nDigite os numeros da matriz A ",linhas," x ",colunas,": \n")
		lerMatriz(matrizA,linhas,colunas)

		escreva("\nDigite os numeros da matriz B ",linhasB," x ",colunasB,": \n")
		lerMatriz(matrizB,linhasB,colunasB)
		
		
		se(produtoPossivel(linhas, colunasB))
		{
			retorne
		}
		
		escreva("\nO PRODUTO DAS MATRIZES É:\n")
		produtoDaMatrizAComMatrizB(matrizProduto, linhas ,colunas, matrizA, linhas ,colunas,matrizB, linhasB ,colunasB)
		escreverMatriz(matrizProduto,linhas,colunasB)
	}
}
