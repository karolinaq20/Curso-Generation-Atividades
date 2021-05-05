package AulaJava;
import java.util.*;
public class Exercicio4 {

	public static void main(String[] args) {
		// 4-	Faça um programa em que permita a entrada de um número qualquer e exiba se este número é par ou ímpar. Se for par exiba também a raiz quadrada do mesmo; se for ímpar exiba o número elevado ao quadrado.

	int num;
	double res;
	Scanner leia = new Scanner(System.in);
	
	System.out.println("Entre com o número: ");
	num = leia.nextInt();
	
	if(num % 2 == 0)
	{
		res = Math.sqrt(num);
	}
	else 
	{
		res = Math.pow(num, 2);
	
	}
	System.out.println("\nValor:"+res);
	
	

	}
}
