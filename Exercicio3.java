package AulaJava;

import java.util.Scanner;

public class Exercicio3 {

	public static void main(String[] args) {
		float idade;
		
		Scanner leia = new Scanner(System.in);
		System.out.println("Quantos anos você tem? ");
		idade = leia.nextFloat();
		
		//idade de 10 a 14 anos- infantil
		if (idade>=10 && idade<=14)
		{
			System.out.println("Sua categoria é Infantil!");
		}
		//idade de 15 a 17 anos-Juvenil
		else if (idade>=15 && idade<=17)
		{
			System.out.println("\nSua categoria é Juvenil!");
		}
		//idade de 18 a 25 anos - Adulto 
		else if (idade>=18 && idade<=25)
		{
			System.out.println("\nSua categoria é Adulto!");
		}
		else 
		{
			System.out.println("\nVocê não se encaixa em nenhuma categoria!");
		}

	}

}
