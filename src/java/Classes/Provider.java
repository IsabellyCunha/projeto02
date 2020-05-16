package Classes;

public class Provider {

    private String nome, razaoSocial, email, endereco, cnpj, telefone;

    public void setAttributes(String nome, String razaoSocial, String email, String endereco, String cnpj, String telefone) {

        this.setNome(nome);
        this.setRazaoSocial(razaoSocial);
        this.setEmail(email);
        this.setEndereco(endereco);
        this.setCnpj(cnpj);
        this.setTelefone(telefone);

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
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

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }



}
