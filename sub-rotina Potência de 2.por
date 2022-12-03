programa
{
	funcao logico verificandoSeEPotenciaDe2(inteiro numero)
	{
		logico ePotenciaDe2 = (numero!= 0) e nao ((numero & (numero - 1))!= 0)
		
		se(ePotenciaDe2 == falso)
		{
			escreva("\nNão é potencia de 2!!")
		}
		senao se(ePotenciaDe2 == verdadeiro)
		{
			escreva("\nÉ potencia de 2!!")
		}
		
		retorne ePotenciaDe2
	}
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("----Testando se um número é potência de 2---- \n\n")
		escreva("Informe o número em decimal:\n")
		leia(numero)
		verificandoSeEPotenciaDe2(numero)
		
	}
}
