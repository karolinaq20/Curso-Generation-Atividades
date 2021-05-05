package AulaJava;

import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		// 1-	Faça um programa que receba três inteiros e diga qual deles é o maior.
		float num1,num2,num3 = 0;
		Scanner leia = new Scanner(System.in);
		System.out.println("Entre comm o primeiro número: ");
		num1 = leia.nextFloat();
		System.out.println("\nEntre com o segundo número: ");
		num2 = leia.nextFloat();
		System.out.println("\nEntre com o terceiro número: ");
		num2 = leia.nextFloat();
		if (num1 > num2)
		{
			if(num1 > num3)
			{
				System.out.println("\nO maior número é:"+num1);
			}
			else
			{
				System.out.println("\nO maior número é :"+num3);
			}
			
		}
		else 
		{
			if(num2 > num3)
			{
				System.out.println("\nO maior número é: "+num2);
			}
			else
			{
				System.out.println("\nO maior número é: "+num3);
			}
		}
		
	}

}
