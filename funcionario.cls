public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    
    public Funcionario(){}

    public Funcionario(String nome,Integer rg,Integer matricula){
        this.nome = nome;
        this.rg = rg;
        this.matricula = matricula;
    }

    public Funcionario(String nome,Integer rg,String cpf,Integer matricula,String email,String telefone){
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.matricula = matricula;
        this.email = email;
        this.telefone = telefone;
    }

    public void renda_extra(Veiculo veiculo){
        Decimal comissao = 0;

        if(veiculo.novo){
            comissao += 300;
        }else{
            comissao += 200;
        }

        if(veiculo.tipo.equals('carro')){
            comissao += veiculo.valorVenda * 0.15;
        }else{
            comissao += veiculo.valorVenda * 0.10;
        }
        System.debug('Comissão recebida na venda do veiculo: ' + comissao);
    }

    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.getPlaca() + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        renda_extra(veiculo);
    }

    {
        this.email = 'Sem informações';
        this.telefone = 'Sem informações';
        this.matricula = 000000;
    }
}