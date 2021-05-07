//3- Leia uma matriz 3 x 3, conte e escreva quantos valores maiores que 10 ela possui.
package PacoteJava;
import java.util.*;

public class ExercicioMatriz1 {

	public static void main(String[] args) {
	int [][] valores = new int [3][3];
	int linha,coluna,contmaiores=0;
	
	Scanner leia = new Scanner(System.in);
	
	for(linha=0;linha<3;linha++)
	{
		for(coluna=0;coluna<3;coluna++)
		{
			System.out.println("\nEntre com um número: ");
			valores[linha][coluna]=leia.nextInt();
				
		if(valores[linha][coluna]>10) 
		 {
			contmaiores++;
		 }
	    }
	}
	System.out.println("\nPossui " +contmaiores+ " números maiores que 10.");
}

}
