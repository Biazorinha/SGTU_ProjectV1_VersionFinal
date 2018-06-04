

class LoginController {

    def index() { }

    def login() {
        String loginUsuario = "@SouAdmin";
        String senhaUsuario = "@SouAdmin123";
        if (request.get) {
            return // render the login view
        }
        def u = Cadastro.findByLogin(params.username)


        if (loginUsuario.equalsIgnoreCase(params.username) & senhaUsuario.equals(params.password)){

            redirect(controller: "cadastro", action: "index" )

        } else if (u) {
            if (u.senhaUsuario == params.password) {
                def userId = u.id
                session.user = u
              redirect(controller: "cadastro", action: "listIndex", params :[userId:userId], flash:flash )
            }  else{
                flash.message = "Usuário ou senha incorreto."
            }

        }
        else {
            redirect(uri: "/")
            flash.message = "Erro ao tentar realizar Login."
        }
    }
}
