package PacoteJava;
/*3-Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de 21 anos.
 *  Total de pessoas com mais de 50 anos. O programa termina quando idade for = -99. (WHILE)
 * */
import java.util.*;
public class ExercicioWhile1 {
	public static void main(String[] args) {
		int idade,cont21=0,cont50=0;
		Scanner leia = new Scanner(System.in);
		System.out.printf("\nQual a sua idade?");
		idade = leia.nextInt();
				
		while(idade!=-99)
		{
			if (idade <=21)
			{
				cont21++;
			}	
			if (idade >=50)
			{
				cont50++;
			}
			System.out.printf("\nQual a sua idade?");
			idade = leia.nextInt();
			}
			System.out.printf("\nO Total de pessoas com menos de 21 anos é: %d",cont21);
			System.out.printf("\nO Total de pessoas com mais de 50 anos é: %d",cont50);
		
		}
		
}