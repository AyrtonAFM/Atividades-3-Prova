programa
{
	inclua biblioteca Util --> ut

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

	funcao exibirMatriz(real matriz[][], inteiro numeroDeLinhas, inteiro numeroDeColunas)
	{
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{
			para(inteiro j = 0; j < numeroDeColunas; j++)
			{
				escreva(matriz[i][j]," ")
			}
			escreva("\n")
		}		
	}
	
	funcao inicio()
	{
		const inteiro NUMERODELINHAS = 2, NUMERODECOLUNAS = 2
		real matriz[NUMERODELINHAS][NUMERODECOLUNAS]

		escreva("Entre com os elementos da matriz ", NUMERODELINHAS,"x",NUMERODECOLUNAS,"\n")
		lerMatriz(matriz,NUMERODELINHAS,NUMERODECOLUNAS)

		escreva("Os elementos da matriz ", NUMERODELINHAS,"x",NUMERODECOLUNAS," de entrada é:\n")
		exibirMatriz(matriz,NUMERODELINHAS,NUMERODECOLUNAS)
	}
}
