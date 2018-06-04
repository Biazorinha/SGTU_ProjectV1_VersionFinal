class Cadastro {
    //Declaraçao de variáveis
    //Dados do usuário
    Long id;
    String nomeUsuario;
    String numCpfUsuario;
    String numRgUsuario;
    Date   dataNascimentoUsuario;

    //Dados de endereço
    String nomeRua ;
    String numCelular;
    String numCEP;
    String  naturalidade;
    String  bairro;
    //Dados academicos
    String  nomeCurso;
    Integer semestreCurso;
    String  turnoCurso;
    //Dados de acesso
    String emailUsuario;
    String senhaUsuario;
    String login;

    //dados feedback
    String description;
    //String arquivo;

    //Relacionamento entre Roteiro e Cadastro Usuário
    static belongsTo  = [roteiro:Roteiro]

    static constraints = {


        nomeUsuario  blank: false, maxSize: 128
        numCpfUsuario  blank: false, maxSize: 128, unique: true
        numRgUsuario  blank: false, maxSize: 128
        dataNascimentoUsuario  blank: false, maxSize: 128

        nomeRua  blank: false, maxSize: 128
        numCelular  blank: false, maxSize: 128
        numCEP  blank: false, maxSize: 128
        naturalidade  blank: false, maxSize: 128
        bairro  blank: false, maxSize: 128
        nomeCurso  blank: false, maxSize: 128
        semestreCurso  blank: false, maxSize: 128
        turnoCurso  blank: false, maxSize: 128

        emailUsuario email: true, blank: false, unique: true
        senhaUsuario size: 5..15, blank: false
        login size: 5..15, blank: false, unique: true

        description nullable: true, blank: true, maxSize: 200
//        arquivo blank: true

        roteiro nullable: true,blank: true, maxSize: 128
    }
}
