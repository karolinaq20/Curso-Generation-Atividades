/*3-Crie uma um programa para trabalhar com estoque de uma loja, o programa deverá trabalhar com Collection do tipo List do Java 
 * para manipular os dados desse estoque, 
 * o programa deverá atender as seguintes funcionalidades:
Armazenar dados da List
Remover dados da list;
Atualizar dados da list.
Apresentar todos os dados da list.*/
package ExerciciosPOO;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Scanner;

public class ExercicioCollection {
public static void main(String[] args) {
	int op;
	Scanner leia = new Scanner(System.in);
	
	Collection<String> lista = new ArrayList();
	lista.add("Blusa");
	lista.add("Camiseta");
	lista.add("Jaqueta");
	lista.add("Calça");
	lista.add("Pijama");
	
	do
	{
		System.out.println("\n----------------------------");
		System.out.println("\n(1) Deseja remover algum produto dessa lista?");
		System.out.println("\n(2) Atualizar produtos do estoque?");
		System.out.println("\n(3) Mostrar todos os produtos da lista.");
		System.out.println("\n(0) Deseja encerrar o programa?");
		System.out.println("\nDigite sua opção: ");
		op = leia.nextInt();
		
		switch(op)
		{
		case 1:
			leia.nextLine();
			System.out.println("\nDigite o produto para remover da Lista: ");
			String produto1 = leia.nextLine();
			if (lista.contains(produto1)) {
				lista.remove(produto1);
			} else {
				System.out.println("\nProduto não existe no meu estoque!!!");
			}
			break;
		case 2:
			leia.nextLine();
			System.out.println("\nDigite o produto que quer atualizar: ");
			String verifica = leia.nextLine();
			System.out.println("\nDigite o nome do produto que entrar no lugar de " + verifica + " : ");
			String novo = leia.nextLine();
			if (lista.contains(verifica)) {
				lista.remove(verifica);
				lista.add(novo);
			} else {
				System.out.println("\nProduto não existe no meu estoque!!!");
			}
			break;
		case 3:
			System.out.println("\nMostrando os produtos do estoque...");
			System.out.println(lista);
			break;
		default:
			System.out.println("\nFinalizou o programa...");
		}
	}
	while(op !=0);
	
}
}
