import org.springframework.web.multipart.commons.CommonsMultipartFile

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CadastroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cadastro.list(params), model:[cadastroInstanceCount: Cadastro.count()]
    }

    def show(Cadastro cadastroInstance) {
        respond cadastroInstance
    }

    def showUser(Cadastro cadastroInstance) {
        render(template: "showUser", model: [cadastroInstance:cadastroInstance],flash:flash)
    }

    def listIndex(Integer userId){

        def cadastroList = Cadastro.findById( userId.intValue());

        return render(template: "list", model:[cadastroList: cadastroList], flash: flash)
    }


    def list(Integer id){

        def cadastroList = Cadastro.findById( id);

        return render(template: "list", model:[cadastroList: cadastroList], flash: flash)
    }

    def create() {
        respond new Cadastro(params)
    }

    def createAdmin() {
        respond new Cadastro(params)
    }

    def searchSvn(){
        upload(params.myFile)
        return render(view:'index');
    }

    def upload() {

        def f = request.getFile('myFile')
        def name = f.getOriginalFilename();
        if (f.empty) {
            flash.message = 'file cannot be empty'
            render(view: 'uploadForm')
            return
        }
        f.transferTo(new File('C:\\Users\\jefferson.s.silva\\upload\\' + name ))
        response.sendError(200, 'Done')
    }

    @Transactional
    def saveUser(Cadastro cadastroInstance) {
        def f = request.getFile('myFile')
        def name = f.getOriginalFilename();
        if (f.empty) {
            flash.message = 'É ncessário enviar um arquivo'
        }

        if (cadastroInstance == null) {
            notFound()
            return
        }

        if (cadastroInstance.hasErrors()){
            respond cadastroInstance.errors, view:'create'
            flash.message = 'Dados já cadastrados. Realize login na plataforma.'
            return
        }


        f.transferTo(new File('C:\\Users\\jefferson.s.silva\\upload\\' + name ))
        cadastroInstance.save flush:true

        render(template: "showUser", model: [cadastroInstance: cadastroInstance], flash: flash)

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'cadastro.label', default: 'Cadastro'), cadastroInstance.id])
//                redirect cadastroInstance
//            }
//            '*' { respond cadastroInstance, [status: CREATED] }
//        }
    }

    @Transactional
    def save(Cadastro cadastroInstance) {
        if (cadastroInstance == null) {
            notFound()
            return
        }

        if (cadastroInstance.hasErrors()) {
            respond cadastroInstance.errors, view:'create'
            return
        }

        def f = request.getFile('myFile')
        def name = f.getOriginalFilename();
        if (f.empty) {
            flash.message = 'file cannot be empty'
            render(view: 'uploadForm')
            return
        }
        f.transferTo(new File('C:\\Users\\jefferson.s.silva\\upload\\' + name ))


        cadastroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cadastro.label', default: 'Cadastro'), cadastroInstance.id])
                redirect cadastroInstance
            }
            '*' { respond cadastroInstance, [status: CREATED] }
        }
    }

    def edit(Cadastro cadastroInstance) {
        respond cadastroInstance
    }


    def editUser(Cadastro cadastroInstance) {
        respond cadastroInstance
    }

    @Transactional
    def updateUser(Cadastro cadastroInstance) {
        if (cadastroInstance == null) {
            notFound()
            return
        }

        if (cadastroInstance.hasErrors()) {
            respond cadastroInstance.errors, view:'edit'
            return
        }

        cadastroInstance.save flush:true

        render(template: "showUser", model: [cadastroInstance: cadastroInstance], flash: flash)

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cadastro.label', default: 'Cadastro'), cadastroInstance.id])
//                redirect cadastroInstance
//            }
//            '*'{ respond cadastroInstance, [status: OK] }
//        }
    }


    @Transactional
    def update(Cadastro cadastroInstance) {
        if (cadastroInstance == null) {
            notFound()
            return
        }

        if (cadastroInstance.hasErrors()) {
            respond cadastroInstance.errors, view:'edit'
            return
        }

        cadastroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cadastro.label', default: 'Cadastro'), cadastroInstance.id])
                redirect cadastroInstance
            }
            '*'{ respond cadastroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cadastro cadastroInstance) {

        if (cadastroInstance == null) {
            notFound()
            return
        }

        cadastroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cadastro.label', default: 'Cadastro'), cadastroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cadastro.label', default: 'Cadastro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
