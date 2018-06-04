class Roteiro {
    //Declaraçao de variáveis
    Long id;
    String numRoteiro;
    String nomeMotorista;
    String rota;

    //Relacionamento entre Roteiro e Status
    static belongsTo  = [statusRoteiro:StatusRoteiro]

    static hasMany = [cadastro:Cadastro]

    String toString (){
        this.numRoteiro
    }

    static constraints = {
        numRoteiro nullable: false, blank: false, maxSize: 4
        nomeMotorista nullable: false, blank: false
        rota nullable: false, maxSize: 184
    }

}