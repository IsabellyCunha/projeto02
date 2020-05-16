package Classes;

public class Customer {

    private String nome, email, endereco, cpf, rg, telefone;

    public void setAttributes(String nome, String email, String endereco, String cpf, String rg, String telefone) {

        this.setNome(nome);
        this.setEmail(email);
        this.setEndereco(endereco);
        this.setCpf(cpf);
        this.setRg(rg);
        this.setTelefone(telefone);

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }



}
