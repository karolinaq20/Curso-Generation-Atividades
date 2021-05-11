package ExerciciosPOO;

public class ContaBancaria {
	private String Nome;
	private String CPF;
	private String Banco ;
	private int Agencia ;
	private String Conta;
	public ContaBancaria (String Nome,String CPF,String Banco,int Agencia,String Conta)
	{
this.Nome = Nome;
this.CPF = CPF;
this.Banco= Banco;
this.Agencia = Agencia;
this.Conta = Conta;
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

	public String getBanco() {
		return Banco;
	}

	public void setBanco(String banco) {
		Banco = banco;
	}

	public int getAgencia() {
		return Agencia;
	}

	public void setAgencia(int agencia) {
		Agencia = agencia;
	}

	public String getConta() {
		return Conta;
	}

	public void setConta(String conta) {
		Conta = conta;
	}

public void imprimirInfo()
{
	System.out.println("Nome do cliente:"+Nome+"\nCPF: "+CPF+"\nBanco: "+Banco+"\nAgência: "+Agencia+"\nConta: "+Conta);
}

}