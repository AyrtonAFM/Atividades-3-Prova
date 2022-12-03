programa
{
	funcao escrevaVetor(inteiro n)
	{
		inteiro int = 1
		se(n > 10)
		{
			escrevaVetor(n/10)
			int++
		}
		inteiro vetor[100]
		para(inteiro i=0; i<int; i++)
		{
			n=n%10
			vetor[i]=n
		}
		para(inteiro i=0; i<1; i++)
		{
			escreva(vetor[i])
		}
	}
	
	funcao inicio()
	{
		escrevaVetor(987)
	}
}
