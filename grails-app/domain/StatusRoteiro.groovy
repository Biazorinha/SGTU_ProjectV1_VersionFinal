class StatusRoteiro {
       //Declaraçao de variáveis
        Long idStatusRoteiro;
        String  statusRoteiro;


    //tag responsável por fazer a relação entre biblioteca/livros e Editora/Livros
    static hasMany = [roteiro:Roteiro]

    static constraints = {
        statusRoteiro nullable: false, blank: false
        roteiro maxSize: 128
    }

    String toString (){
        this.statusRoteiro
    }

}

