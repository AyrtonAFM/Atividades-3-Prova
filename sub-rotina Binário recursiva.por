programa
{

funcao logico buscaBinariaRecursiva(real vetor[], inteiro posicaoDoUltimoElemento, inteiro posicaoDoPrimeiroElemento, real numeroBuscado)
{
inteiro meio

se(posicaoDoUltimoElemento < posicaoDoPrimeiroElemento)
{
retorne falso
}

meio = posicaoDoPrimeiroElemento + (posicaoDoUltimoElemento - posicaoDoPrimeiroElemento) / 2

se(vetor[meio] == numeroBuscado)
{
retorne verdadeiro
}
senao se (vetor[meio] < numeroBuscado)
{
retorne buscaBinariaRecursiva(vetor, posicaoDoUltimoElemento, meio + 1, numeroBuscado)
}
senao
{
retorne buscaBinariaRecursiva(vetor, meio - 1, posicaoDoPrimeiroElemento, numeroBuscado)
}
}
funcao trocaElementosDeUmVetor(real vetor[], inteiro posicaoPrimeiroElemento, inteiro posicaoSegundoElemento)
{
real aux

aux = vetor[posicaoPrimeiroElemento]
vetor[posicaoPrimeiroElemento] = vetor[posicaoSegundoElemento]
vetor[posicaoSegundoElemento] = aux
}

funcao ordenaVetorRecursivo(real vetor[], inteiro numeroDeElementos)
{
para(inteiro elemento = 0; elemento < numeroDeElementos - 1; elemento++)
{
se(vetor[elemento] > vetor[elemento + 1])
{
trocaElementosDeUmVetor(vetor, elemento, elemento + 1)
}
}

se(numeroDeElementos - 1 > 1)
{
ordenaVetorRecursivo(vetor, numeroDeElementos - 1)
}
}

funcao exibirVetorComNovaLinha(real vetor[], inteiro numeroDeElementos)
{
exibirVetor(vetor, numeroDeElementos)
escreva("\n")
}

funcao exibirVetor(real vetor[], inteiro numeroDeElementos)
{
para(inteiro elemento = 0; elemento < numeroDeElementos; elemento++)
{
escreva(vetor[elemento]," ")
}
}

funcao inicio()
{
const inteiro NUMERO_DE_ELEMENTOS = 7
real vetor[NUMERO_DE_ELEMENTOS] = {3.3,7.8,1.2,4.4,2.1,7.0,2.2}, numeroDaBusca = 4.4
inteiro posicaoDoUltimoElemento = NUMERO_DE_ELEMENTOS - 1, posicaoDoPrimeiroElemento = 0
logico numeroDaBuscaEstahNoVetor

escreva("O número da busca é ",numeroDaBusca," e o vetor para busca é:\n")
exibirVetorComNovaLinha(vetor, NUMERO_DE_ELEMENTOS)

ordenaVetorRecursivo(vetor, NUMERO_DE_ELEMENTOS)
numeroDaBuscaEstahNoVetor = buscaBinariaRecursiva(vetor, posicaoDoUltimoElemento, posicaoDoPrimeiroElemento, numeroDaBusca)

escreva("\nO número da busca está no vetor? ",numeroDaBuscaEstahNoVetor)
escreva("\n")
}
}
Este conteúdo não foi criado nem aprovado pelo Google. Denunciar abuso - Termos de Serviço - Política de Privacidade
