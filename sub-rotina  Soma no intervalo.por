programa 
{
	
	funcao real somatorio (real limiteInferior , real limiteSuperior , real incremento )
	{
	    real somaDoIntervaloComOIncremento=0.0
	    logico numeroInvalido = falso
	    logico repita
	    
	    faca
	    {
	      
		logico limiteInferiorMaiorQueLimiteSuperior = limiteInferior >= limiteSuperior
		logico incrementoMaiorQueLimiteSuperior = incremento >= limiteSuperior
		logico incrementoNegativo = incremento < 0
		logico valoresInvalidos = limiteInferiorMaiorQueLimiteSuperior ou incrementoMaiorQueLimiteSuperior ou incrementoNegativo
		repita = valoresInvalidos ou numeroInvalido
		
		se(limiteInferiorMaiorQueLimiteSuperior)
		{
			escreva("\nO limite inferior do intervalor não pode ser maior que o limite superior!\n")
		}
		senao se(incrementoMaiorQueLimiteSuperior)
		{
			escreva("\nO valor do incremento não pode ser maior ou igual ao limite superior!\n")
		}
		se(incrementoNegativo )
		{
			escreva("\nO valor do incremento não pode ser negativo!\n")
		}
		
		}enquanto(repita)
	    
		para(limiteInferior = limiteInferior ; limiteInferior <= limiteSuperior ; limiteInferior ++)
		{
		    somaDoIntervaloComOIncremento+= limiteInferior + incremento
		    
		}
		retorne somaDoIntervaloComOIncremento
	}
	
	
	funcao inicio() 
	{
		real limiteInferior=0.0 , limiteSuperior = 0.0 , incremento = 0.0, resultadoDaSoma  
		
		escreva("----Calcular o somatório de todos os valores dentro de um intervalo e incremento quaisquer---- \n\n")

		escreva("Informe o valor do limite inferior:\n")
		leia(limiteInferior)

		escreva("Informe o valor do limite superior:\n")
		leia(limiteSuperior)
		
		escreva("Informe o incremento:\n")
		leia(incremento)
		
		escreva("O resultado do somatorio é :", somatorio (limiteInferior,limiteSuperior,incremento),"\n")

		
	}
}

