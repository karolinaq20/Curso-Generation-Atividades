package PacoteJava;
/*5-	Crie um programa que leia um n�mero do teclado at� que encontre um n�mero igual a zero. 
 * No final, mostre a soma dos n�meros digitados.(DO...WHILE)
 * */
import java.util.*;
public class ExercicioDoWhile1 {
public static void main(String[] args) {
	int num,soma=0;
	
	Scanner leia = new Scanner(System.in);
	
	do
	{
		System.out.printf("\nEntre com um n�mero: ");
		num = leia.nextInt();
		
		
		if (num!=0)
		{
			soma = soma + num;
		}
		
	}
	while(num >0);
	System.out.printf("\nSoma dos n�meros digitados: %d",soma);
	
}


}
