package ExerciciosPOO;

public class TesteAnimais {
	public static void main(String[] args) {
		Cachorro1 cachorro = new Cachorro1("Peludinho", 6, "Correr");
		cachorro.imprimirInfo();

		Cavalo1 cavalo = new Cavalo1("Spirit", 10, "Corredor");
		cavalo.imprimirInfo();

		Preguica1 preguica = new Preguica1("Preguicinha", 3, "Subir em árvores.");
		preguica.imprimirInfo();

	}
}