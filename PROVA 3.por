programa
{
	inclua biblioteca Matematica --> m

	funcao real definirIntervaloDeX (real limiteInferior , real limiteSuperior)
	{
		real novoLimiteInferior
		real intervalos=0.0
		enquanto(limiteInferior >= limiteSuperior)
		{
			escreva("\nO LIMITE INFERIOR NÃO PODE SER MAIOR QUE O LIMITE SUPERIOR!!\n")
			escreva("Informe um LIMITE INFERIOR menor que o limite superior = ",limiteSuperior,"\n")
			leia(limiteInferior)
		}
		
		novoLimiteInferior = limiteInferior
	  	retorne novoLimiteInferior
	}
	
	funcao entradaDoConjuntoXNoIntervalo(real conjuntoX[][], inteiro numeroDeLinhas, inteiro numeroDeColunas, real novoLimiteInferior, real limiteSuperior)
	{
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{
			para(inteiro j = 0; j < numeroDeColunas; j++)
			{
				leia(conjuntoX[i][j])

				se(conjuntoX[i][j]<novoLimiteInferior ou conjuntoX[i][j]>limiteSuperior)
				{
					escreva("O ELEMENTO DA MATRIZ TEM QUE ESTÁ NO INTERVALO ENTRE ",novoLimiteInferior," E ",limiteSuperior,"\n")
					leia(conjuntoX[i][j])
				}
			}
		}		
	}

	funcao calculoDoConjuntoY(real conjuntoX[][], inteiro numeroDeLinhas, inteiro numeroDeColunas, real EULER, inteiro posicaoDoVetor, real vetorY[],real ValorDeY,real ElementoDaMatriz)
	{
		
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{	
			
			para(inteiro j=0; j<numeroDeColunas;j++)
			{	ElementoDaMatriz=conjuntoX[j][i]
				ValorDeY= 10 * (m.potencia(ElementoDaMatriz,2.0)) * (m.potencia(EULER,-ElementoDaMatriz))
				vetorY[posicaoDoVetor] = ValorDeY
				posicaoDoVetor++
			}
			
		}
	}

	funcao inteiro obterPrecisaoValida (inteiro casasDecimais)
	{
		enquanto(casasDecimais<0)
		{
			escreva("\nQUANTIDADE DE CASAS DECIMAIS NÃO PODER SER UM VALOR NEGATIVO!!\n")
			escreva("Informe a quantidade de casas decimais que você quer arredondar?\n")
			leia(casasDecimais)
		}
	  	retorne casasDecimais
	}

	funcao exibirConjuntoXY (real conjuntoX[][], inteiro numeroDeLinhas, inteiro numeroDeColunas,real conjuntoY[],inteiro posicaoDoVetor,inteiro casasDecimais)
	{
		para(inteiro i = 0; i < numeroDeLinhas; i++)
		{
			para(inteiro j = 0; j < numeroDeColunas; j++)
			{

				escreva("y(",conjuntoX[i][j],") = ",m.arredondar(conjuntoY[posicaoDoVetor], casasDecimais),"\t")
				posicaoDoVetor++
			}
			escreva("\n")
		}		
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_MAXIMO_NO_VETOR = 4
		const real EULER =2.718
		const inteiro NUMERO_DE_LINHAS = 2, NUMERO_DE_COLUNAS = 2
		real conjuntoX[NUMERO_DE_LINHAS][NUMERO_DE_COLUNAS]
		real limiteInferior, limiteSuperior, novoLimiteInferior
		inteiro casasDecimais
		real conjuntoY[NUMERO_MAXIMO_NO_VETOR],ValorDeY=0.0,ElementoDaMatriz=0.0
		inteiro posicaoDoVetor=0

		escreva("----CALCULAR O VALOR DE Y = 10x²*e-x ----\n\n")
		escreva("A MATRIZ É 2x2\n\n")
		escreva("ENTRE COM OS INTERVALOS\n")
		escreva("Informe o valor do limite inferior:\n")
		leia(limiteInferior)

		escreva("Informe o valor do limite superior:\n")
		leia(limiteSuperior)
		
		novoLimiteInferior = definirIntervaloDeX(limiteInferior,limiteSuperior)
		escreva("\n\nOK! Entre com os elementos da matriz ", NUMERO_DE_LINHAS,"x",NUMERO_DE_COLUNAS,"\n")
		escreva("OBS: Digite elementos que estejam no intervalo entre ",novoLimiteInferior," e ",limiteSuperior,"\n")
		entradaDoConjuntoXNoIntervalo(conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS, novoLimiteInferior ,limiteSuperior)

		escreva("\nQuantas casas decimais você quer ARREDONDAR os resultado de Y?\n")
		leia(casasDecimais)

		obterPrecisaoValida(casasDecimais)

		escreva("\nOs elementos da matriz ", NUMERO_DE_LINHAS,"x",NUMERO_DE_COLUNAS," e os VALORES DE Y ARREDONDADOS são :\n")
		
		calculoDoConjuntoY (conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS,EULER,posicaoDoVetor,conjuntoY,ValorDeY,ElementoDaMatriz)
		exibirConjuntoXY (conjuntoX,NUMERO_DE_LINHAS,NUMERO_DE_COLUNAS,conjuntoY,posicaoDoVetor,casasDecimais)

	}
}
