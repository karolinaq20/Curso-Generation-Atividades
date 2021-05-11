/*Crie uma classe produto eletr�nico e apresente os atributos e m�todos referentes esta classe, 
 * em seguida crie um objeto produto eletr�nico, defina as instancias deste objeto 
 * e apresente as informa��es deste objeto no console. */
package ExerciciosPOO;

public class ProdutoEletronico {
private String NomeProduto;
private float Preco;
private String ModeloProduto; 
private String Processador; 
private String Memoria; 
private String Acessorios;

public ProdutoEletronico (String NomeProduto,float Preco,String ModeloProduto,String Processador,String Memoria,String Acessorios)
	{
this.NomeProduto = NomeProduto;
this.Preco = Preco;
this.ModeloProduto = ModeloProduto;
this.Processador = Processador;
this.Memoria = Memoria;
this.Acessorios = Acessorios;
	}

public void imprimirInfo()
{
	System.out.println(NomeProduto+"\nO pre�o deste produto � : "+Preco+"\nO modelo dele �: "+ModeloProduto+"\nTem o pocessador: "+Processador+"\nTem: "+Memoria+" de mem�ria\nEsse produto acompanha alguns acess�rios: "+Acessorios);
}

public String getNomeProduto() {
	return NomeProduto;
}

public void setNomeProduto(String nomeProduto) {
	NomeProduto = nomeProduto;
}

public float getPreco() {
	return Preco;
}

public void setPreco(float preco) {
	Preco = preco;
}

public String getModeloProduto() {
	return ModeloProduto;
}

public void setModeloProduto(String modeloProduto) {
	ModeloProduto = modeloProduto;
}

public String getProcessador() {
	return Processador;
}

public void setProcessador(String processador) {
	Processador = processador;
}

public String getMemoria() {
	return Memoria;
}

public void setMemoria(String memoria) {
	Memoria = memoria;
}

public String getAcessorios() {
	return Acessorios;
}

public void setAcessorios(String acessorios) {
	Acessorios = acessorios;
}


}