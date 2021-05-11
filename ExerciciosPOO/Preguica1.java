package ExerciciosPOO;

public class Preguica1 extends Animais1 {
	private String deveSubirArvores;
	
	public Preguica1 (String nome,int idade,String deveSubirArvores)
	{
		super(nome,idade);
		this.deveSubirArvores = deveSubirArvores;
	}

	public String getDeveSubirArvores() {
		return deveSubirArvores;
	}

	public void setDeveSubirArvores(String deveSubirArvores) {
		this.deveSubirArvores = deveSubirArvores;
	}
	public void imprimirInfo()
	{
		System.out.println("\nNome da Preguiça é:"+getNome()+"\n"+"Tem "+getIdade()+" anos"+"\n"+"E emiti o som:"+emitirSom("Agudo")+"\n"+"Ela é ótima em: "+deveSubirArvores);
	}
}
