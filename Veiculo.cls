public class Veiculo {
    public String placa;
    public String marca;
    public String tipo;
    public String modelo;
    public Integer anoFabricacao;
    public String proprietarioAtual;
    public String proprietarioAnterior;
    public Boolean novo;
    public Decimal valorCompra;
    public Decimal valorVenda;
    
    
    public Veiculo(){}
    
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
            this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }

    public Veiculo(String modelo,String marca,String placa, Integer anoFabricacao, Decimal valorCompra){
        this.modelo = modelo;
        this.marca = marca;
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
            this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    
    {
      valorVenda = 0;
      valorCompra = 0;
      marca = 'Sem informações';
    }

    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
}