public class Cliente {
    public String nome;
    public String rg;
    public String cpf;
    public String telefone;
    public String email;
    public String endereco;
    
    public Cliente(){}
    
    public Cliente(String nome,String rg,String cpf){
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;      
    }
    
    public Cliente(String nome,String rg,String cpf,String telefone,String email,String endereco){
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }
    
    {
        this.telefone = 'Sem informações';
        this.email = 'Sem informações';
        this.endereco = 'Sem informações';
    }
    
}