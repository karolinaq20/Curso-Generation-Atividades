/*Crie uma classe produto eletrônico e apresente os atributos e métodos referentes esta classe, 
 * em seguida crie um objeto produto eletrônico, defina as instancias deste objeto 
 * e apresente as informações deste objeto no console. */
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
	System.out.println(NomeProduto+"\nO preço deste produto é : "+Preco+"\nO modelo dele é: "+ModeloProduto+"\nTem o pocessador: "+Processador+"\nTem: "+Memoria+" de memória\nEsse produto acompanha alguns acessórios: "+Acessorios);
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