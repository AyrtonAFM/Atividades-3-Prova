programa
{
	funcao inteiro exibirUmInteiro(inteiro numero)
	{
		const inteiro MASCARASELETORADENIBBLE = 15
		const inteiro NIBBLE = 4
		inteiro numeroDeDeslocamentos = 0
		inteiro nibbleMenosSignificativoSelecionado
		inteiro nibbleDeslocadoParaLSN = numero >> escolhernibble(numeroDeDeslocamentos)
		
		nibbleMenosSignificativoSelecionado = nibbleDeslocadoParaLSN & MASCARASELETORADENIBBLE
		retorne nibbleMenosSignificativoSelecionado
	}
	
	funcao inteiro escolhernibble( inteiro & numeroDeDeslocamentos )
	{
		inteiro opcao
		
		escreva ("Escolha uma opcão abixo para exibir o inteiro correspondente ao nibble:\n")
		
		para(inteiro x=1; x<9; x++)
		{
			escreva("A opcão |",x,"| corresponde ao ",x,"° nibble\n")
		}
		leia(opcao)
		se(opcao == 1) 
		{
			numeroDeDeslocamentos = 28
		}
		senao
		se(opcao == 2) 
		{
			numeroDeDeslocamentos = 24
		}
		se(opcao == 3) 
		{
			numeroDeDeslocamentos = 20
		}
		se(opcao == 4)
		{
			numeroDeDeslocamentos = 16
		}
		se(opcao == 5)
		{
			numeroDeDeslocamentos = 12
		}
		se(opcao == 6) 
		{
			numeroDeDeslocamentos = 8
		}
		se(opcao == 7) 
		{
			numeroDeDeslocamentos = 4
		}
		se(opcao == 8)
		{
			numeroDeDeslocamentos = 0
		}
		retorne numeroDeDeslocamentos
	}
	
	
	
	funcao inicio ()
	{
		inteiro numero , InteiroCorrespondente, numeroDeDeslocamentos = 0
		escreva("Infome um numero:\n")
		leia(numero)
		
		InteiroCorrespondente = exibirUmInteiro(numero)
		
		escreva ("\nO inteiro correspondente ao nibble é: ",InteiroCorrespondente)
	}
}
