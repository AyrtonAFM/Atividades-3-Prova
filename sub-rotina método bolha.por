programa
{

funcao armazenaDigitosDeUmInteiroEmUmVetor(inteiro vetor[], inteiro numero, inteiro posicaoDoDigito)
{

posicaoDoDigito = posicaoDoDigito - 1
se(numero >= 10)
{
armazenaDigitosDeUmInteiroEmUmVetor(vetor, numero / 10, posicaoDoDigito)
}
vetor[posicaoDoDigito] = numero % 10
}

funcao inteiro contaDigitosDeUmInteiro(inteiro numero)
{
inteiro quantidadeDeDigitos = 0

faca
{
numero = numero / 10
quantidadeDeDigitos++
}enquanto(numero > 0)

retorne quantidadeDeDigitos
}

funcao exibirVetor(inteiro vetor[], inteiro numeroDeElementos)
{
para(inteiro elemento = 0; elemento < numeroDeElementos; elemento++)
{
escreva(vetor[elemento]," ")
}
}

funcao inicio()
{
const inteiro NUMERO_DE_ELEMENTOS = 100
inteiro numero = 12345, vetor[NUMERO_DE_ELEMENTOS], quantidadeDeDigitosDoNumero

quantidadeDeDigitosDoNumero = contaDigitosDeUmInteiro(numero)
se(NUMERO_DE_ELEMENTOS < quantidadeDeDigitosDoNumero)
{
escreva("O número deve ter a quantidade de digitos igual ao número de elementos do vetor")
retorne
}

armazenaDigitosDeUmInteiroEmUmVetor(vetor, numero, quantidadeDeDigitosDoNumero)

escreva("O número escolhido foi ",numero," e os digítos armazenados no vetor foram:\n")
exibirVetor(vetor, quantidadeDeDigitosDoNumero)
}
}
Pesquise na internet sobre fatorial recursivo e implemente-o
6 respostas
.
programa
{
funcao inteiro fatorial(inteiro n)

{
inteiro i, fat = 1

para(i = 2; i <= n; i++)
{
se(n == 1 ou n == 0)
{
retorne 1
}
senao
{
fat *= i
}
}
retorne fat*(n+1)
}

funcao inicio()
{
inteiro numero

escreva("Insira o número cujo fatorial é desejado: ")
leia(numero)

escreva("O fatroial de ", numero, " é ",fatorial(numero-1))


}
}
programa
{

funcao inteiro calculaFatorialRecursivo(inteiro numero)
{
se(numero == 0 ou numero == 1)
{
retorne 1
}
senao
{
retorne numero * calculaFatorialRecursivo(numero - 1)
}
}

funcao inicio()
{
inteiro numero = 4, fatorialDoNumero

fatorialDoNumero = calculaFatorialRecursivo(numero)

escreva("O fatorial do número ",numero," é: ",fatorialDoNumero,"\n")
}
}
Ordenação recursiva pelo método da bolha – pesquise o algoritmo na internet
6 respostas
.
programa
{
funcao ler_vetor(real vetor[], inteiro tamanho_do_vetor)
{
para(inteiro i = tamanho_do_vetor-1; i >= 0; i--)
{
leia(vetor[i])
}
}

funcao escreva_vetor(real vetor[], inteiro tamanho_do_vetor)
{
para(inteiro i = tamanho_do_vetor-1; i >= 0; i--)
{
escreva(vetor[i], " ")
}
}

funcao vetor_em_ordem_descrescente(real vetor[], inteiro tamanho_do_vetor, inteiro posicaoDoUltimoElemento)
{
logico existeElementoForaDeOrdem
faca
{
existeElementoForaDeOrdem = falso

para(inteiro posicaoDaReferencia = posicaoDoUltimoElemento; posicaoDaReferencia >= 0; posicaoDaReferencia--)
{
inteiro posicaoDoElementoAposReferencia = 0

real elementoDeReferencia = vetor[posicaoDaReferencia]
real elementoAposReferencia = vetor[posicaoDoElementoAposReferencia]

logico elementosComparadosEstaoEmOrdemDecrescente = elementoDeReferencia < elementoAposReferencia
se(elementosComparadosEstaoEmOrdemDecrescente)
{
real copiaDoElementoDeReferencia = elementoDeReferencia
vetor[posicaoDaReferencia] = elementoAposReferencia
vetor[posicaoDoElementoAposReferencia] = copiaDoElementoDeReferencia

existeElementoForaDeOrdem = verdadeiro
}
}
}enquanto(existeElementoForaDeOrdem)

para(inteiro i = tamanho_do_vetor-1; i >= 0; i--)
{
escreva(vetor[i]," ")
}
}

funcao vetor_em_ordem_crescente(real vetor[], inteiro tamanho_do_vetor, inteiro posicaoDoUltimoElemento)
{
logico existeElementoForaDeOrdem

faca
{
existeElementoForaDeOrdem = falso

para(inteiro posicaoDaReferencia = posicaoDoUltimoElemento; posicaoDaReferencia >= 0; posicaoDaReferencia--)
{
inteiro posicaoDoElementoAposReferencia = 0

real elementoDeReferencia = vetor[posicaoDaReferencia]
real elementoAposReferencia = vetor[posicaoDoElementoAposReferencia]

logico elementosComparadosEstaoEmOrdemCrescente = elementoDeReferencia > elementoAposReferencia
se(elementosComparadosEstaoEmOrdemCrescente)
{
real copiaDoElementoDeReferencia = elementoDeReferencia
vetor[posicaoDaReferencia] = elementoAposReferencia
vetor[posicaoDoElementoAposReferencia] = copiaDoElementoDeReferencia

existeElementoForaDeOrdem = verdadeiro
}
}
}enquanto(existeElementoForaDeOrdem)

para(inteiro i = tamanho_do_vetor-1; i >= 0; i--)
{
escreva(vetor[i]," ")
}
}

funcao inicio()
{
const inteiro TAMANHO_DO_VETOR = 3
real vetor[TAMANHO_DO_VETOR]
escreva("Entre com os elementos do vetor\n")
ler_vetor(vetor, TAMANHO_DO_VETOR)
escreva("\nO vetor é: ")
escreva_vetor(vetor, TAMANHO_DO_VETOR)
escreva("\nO vetor em ordem decrescente é: ")
vetor_em_ordem_descrescente(vetor, TAMANHO_DO_VETOR, TAMANHO_DO_VETOR - 1)
escreva("\nO vetor em ordem crescente é: ")
vetor_em_ordem_crescente(vetor, TAMANHO_DO_VETOR, TAMANHO_DO_VETOR - 1)

}
}
