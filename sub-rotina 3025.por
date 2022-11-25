programa
{
	
	funcao proprieda3025()
	{
		inteiro primeiroDoisNumeros,ultimosDoisNumeros,somaDasPartes,i
		logico mesmaPropriedade

		
		escreva("3025 : 30 + 25 = 55 -> 55 * 55 = 3025\n\n")
		
		para(i=1000;i<9999;i++)
		{
			primeiroDoisNumeros = i/ 100
			ultimosDoisNumeros = i% 100
			somaDasPartes = primeiroDoisNumeros + ultimosDoisNumeros
			mesmaPropriedade = somaDasPartes * somaDasPartes == i

			se(mesmaPropriedade)
			{
				escreva("O número ",i," possui a mesma propriedade de 3025\n")
			}
		} 
	}
	funcao inicio()
	{
		escreva("----PROGRAMA PARA APRESENTAR A MESMA PROPRIEDADE DE 3025----\n")
		
		proprieda3025()
	}
}
