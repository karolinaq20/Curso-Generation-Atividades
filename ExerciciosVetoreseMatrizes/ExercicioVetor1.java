/*1- Fa�a um programa que possua um vetor denominado A que armazene 6 n�meros inteiros. O programa deve executar os seguintes passos: 
(a) Atribua os seguintes valores a esse vetor: 1, 0, 5, -2, -5, 7. 
(b) Armazene em uma vari�vel inteira (simples) a soma entre os valores das posi��es A[0], A[1] e A[5] do vetor e mostre na tela esta soma. 
(c) Modifique o vetor na posi��o 4, atribuindo a esta posi��o o valor 100. 
(d) Mostre na tela cada valor do vetor A, um em cada linha.*/

package PacoteJava;

public class ExercicioVetor1 {
public static void main(String[] args) {
	int[] A = {1,0,5,-2,-5,7};
	int soma=0;
	//Armazene em uma vari�vel inteira (simples) a soma entre os valores das posi��es A[0], A[1] e A[5] do vetor e mostre na tela esta soma. 
	soma = soma + A[0] + A[1] + A[5];
	System.out.println("\nA soma entre os valores das posi��es A[0], A[1] e A[5] do vetor � "+soma);
	//Modifique o vetor na posi��o 4, atribuindo a esta posi��o o valor 100.
	
	A[4]=100;
	
	//Mostre na tela cada valor do vetor A, um em cada linha
	for (int i : A)
	{
		System.out.println(i);
	}
}
}
