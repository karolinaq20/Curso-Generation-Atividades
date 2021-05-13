/*1-Crie uma hierarquia de classes conforme abaixo com os seguintes atributos e comportamentos (observe a tabela), 
 * utilize os seus conhecimentos e distribua as caracter�sticas 
 * de forma que tudo o que for comum a todos os animais fique na classe Animal: */
package ExerciciosPOO;

public abstract class  Animais1 {
//Caracter�sticas em comum nome,idade,emitir som.
	private String nome;
	private int idade;

	public Animais1(String nome, int idade) {
		super();
		this.nome = nome;
		this.idade = idade;
	}

	abstract String emitirSom();
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
}