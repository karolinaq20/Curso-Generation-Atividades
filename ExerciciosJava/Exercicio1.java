package AulaJava;

import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		// 1-	Fa�a um programa que receba tr�s inteiros e diga qual deles � o maior.
		float num1,num2,num3 = 0;
		Scanner leia = new Scanner(System.in);
		System.out.println("Entre comm o primeiro n�mero: ");
		num1 = leia.nextFloat();
		System.out.println("\nEntre com o segundo n�mero: ");
		num2 = leia.nextFloat();
		System.out.println("\nEntre com o terceiro n�mero: ");
		num2 = leia.nextFloat();
		if (num1 > num2)
		{
			if(num1 > num3)
			{
				System.out.println("\nO maior n�mero �:"+num1);
			}
			else
			{
				System.out.println("\nO maior n�mero � :"+num3);
			}
			
		}
		else 
		{
			if(num2 > num3)
			{
				System.out.println("\nO maior n�mero �: "+num2);
			}
			else
			{
				System.out.println("\nO maior n�mero �: "+num3);
			}
		}
		
	}

}
