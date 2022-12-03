programa
{
	funcao lerVetor(real vetor[], inteiro numeroDEelementos)
	{
		para(inteiro i = 0; i < numeroDEelementos; i++)
		{
			leia(vetor[i])
		}
	}
	
	funcao escreverVetor(real vetor[], inteiro numeroDEelementos)
	{
		para(inteiro i = 0; i < numeroDEelementos; i++)
		{
			escreva(vetor[i]," ")
		}
		
	}
	
	funcao testandoIgualdadeDosElementosDoVetor(real vetor[], inteiro numeroDEelementos, logico iguais)
	{
		logico elementoIguail = verdadeiro
		para(inteiro i = 0; i < numeroDEelementos; i++)
		{
			para(inteiro indice = 1; indice < numeroDEelementos; indice++)
			{
				elementoIguail = vetor[indice]==vetor[i]
				iguais = iguais e vetor[indice]==vetor[i]
			}
		}
		se(iguais)
		{
			escreva("\n\nOs elementos do vetor são IGUAIS \n")
		}
		senao
		{
			escreva("\n\nOs elementos do vetor são DIFERENTES \n ")
		}
	}
	
	funcao inicio()
	{
		const inteiro NUMERO_DE_ELEMENTOS = 4
		real vetor[NUMERO_DE_ELEMENTOS]
		logico iguais = verdadeiro
		escreva("----VERIFICAR SE OS ELEMENTOS DO VETOR SÃO DIFERENTES OU NÃO---- \n\n")
		
		escreva("Informe os ",NUMERO_DE_ELEMENTOS," elementos do vetor : \n")
		lerVetor(vetor, NUMERO_DE_ELEMENTOS)
		
		escreva("\nOs ",NUMERO_DE_ELEMENTOS," elementos do vetor são: \n")
		escreverVetor(vetor, NUMERO_DE_ELEMENTOS)
		
		testandoIgualdadeDosElementosDoVetor(vetor, NUMERO_DE_ELEMENTOS, iguais)
	}
} 
