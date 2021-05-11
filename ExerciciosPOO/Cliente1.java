/*Crie uma classe cliente e apresente os atributos e métodos referentes
esta classe, em seguida crie um objeto cliente, defina as instancias deste
objeto e apresente as informações deste objeto no console.*/
package ExerciciosPOO;
 

public class Cliente1 {
	//Atributos
private String Nome;
private String CPF;
private String Endereco;
private String Email;
private String Telefone;


//Métodos 
public Cliente1 (String Nome,String CPF,String Endereco,String Email,String Telefone)
{
	this.Nome = Nome;
	this.CPF = CPF;
	this.Endereco = Endereco;
	this.Email= Email;
	this.Telefone = Telefone; 
	
	}

//Declarção dos demais métodos da classe 

public void imprimirInfo()
{
	System.out.println("Nome do cliente:"+Nome+"\nCPF: "+CPF+"\nEndereço: "+Endereco+"\nEmail: "+Email+"\nTelefone: "+Telefone);
}

public String getNome() {
	return Nome;
}

public void setNome(String nome) {
	Nome = nome;
}

public String getCPF() {
	return CPF;
}

public void setCPF(String cPF) {
	CPF = cPF;
}

public String getEndereco() {
	return Endereco;
}

public void setEndereco(String endereco) {
	Endereco = endereco;
}

public String getEmail() {
	return Email;
}

public void setEmail(String email) {
	Email = email;
}

public String getTelefone() {
	return Telefone;
}

public void setTelefone(String telefone) {
	Telefone = telefone;
}


}

