programa 
{
    inclua biblioteca Matematica --> Mt

	
	funcao calcularSomatoria(real x)
	{
	    const inteiro PRECISAO = 4
	    real somatorio = 0.0 , sinal = 1.0
	    
	    para ( real t = 25.0 ; t >= 1.0 ; t --)
	    {
	        somatorio+= sinal * Mt.potencia(x, t) / t
	        sinal*=-1
	        
	    }
	    escreva("O resultado é: ", Mt.arredondar(somatorio, PRECISAO))
	}
	
	funcao inicio() 
	{
		real x
		
		escreva("Entre com um valor de X:\n")
		leia(x)
		calcularSomatoria(x)
	}
}
