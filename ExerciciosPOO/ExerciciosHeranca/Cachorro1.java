package ExerciciosPOO;

public class Cachorro1 extends Animais1 {

	private String deveCorrer;

	public Cachorro1(String nome, int idade, String deveCorrer) {
		super(nome, idade);
		this.deveCorrer = deveCorrer;

	}
	@Override
	public String emitirSom ()
	{
		return "latido";
	}

	public String getDeveCorrer() {
		return deveCorrer;
	}

	public void setDeveCorrer(String deveCorrer) {
		this.deveCorrer = deveCorrer;
	}

	public void imprimirInfo() {
		System.out.println("\nNome do cachorro é:" + getNome() + "\n" + "Tem " + getIdade() + " anos" + "\n"
				+ "E emiti o som de:" + this.emitirSom ()+ "\n" + "E gosta muito de: " + deveCorrer);
	}
}
