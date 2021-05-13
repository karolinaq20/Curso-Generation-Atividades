package ExerciciosPOO;

public class Cavalo1 extends Animais1 {

	private String deveCorrer;

	public Cavalo1(String nome, int idade, String deveCorrer) {
		super(nome, idade);
		this.deveCorrer = deveCorrer;
	}
	@Override
	public String emitirSom ()
	{
		return "Relinchar";
	}
	public String getDeveCorrer() {
		return deveCorrer;
	}

	public void setDeveCorrer(String deveCorrer) {
		this.deveCorrer = deveCorrer;
	}

	public void imprimirInfo() {
		System.out.println("\nNome do cavalo é:" + getNome() + "\n" + "Tem " + getIdade() + " anos" + "\n"
				+ "E emiti o som de:" + emitirSom()+ "\n" + "E é um ótimo: " + deveCorrer);
	}
}
