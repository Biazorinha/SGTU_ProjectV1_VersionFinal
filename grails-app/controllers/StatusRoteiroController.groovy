

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StatusRoteiroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StatusRoteiro.list(params), model:[statusRoteiroInstanceCount: StatusRoteiro.count()]
    }

    def show(StatusRoteiro statusRoteiroInstance) {
        respond statusRoteiroInstance
    }

    def create() {
        respond new StatusRoteiro(params)
    }

    @Transactional
    def save(StatusRoteiro statusRoteiroInstance) {
        if (statusRoteiroInstance == null) {
            notFound()
            return
        }

        if (statusRoteiroInstance.hasErrors()) {
            respond statusRoteiroInstance.errors, view:'create'
            return
        }

        statusRoteiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'statusRoteiro.label', default: 'StatusRoteiro'), statusRoteiroInstance.id])
                redirect statusRoteiroInstance
            }
            '*' { respond statusRoteiroInstance, [status: CREATED] }
        }
    }

    def edit(StatusRoteiro statusRoteiroInstance) {
        respond statusRoteiroInstance
    }

    @Transactional
    def update(StatusRoteiro statusRoteiroInstance) {
        if (statusRoteiroInstance == null) {
            notFound()
            return
        }

        if (statusRoteiroInstance.hasErrors()) {
            respond statusRoteiroInstance.errors, view:'edit'
            return
        }

        statusRoteiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StatusRoteiro.label', default: 'StatusRoteiro'), statusRoteiroInstance.id])
                redirect statusRoteiroInstance
            }
            '*'{ respond statusRoteiroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StatusRoteiro statusRoteiroInstance) {

        if (statusRoteiroInstance == null) {
            notFound()
            return
        }

        statusRoteiroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StatusRoteiro.label', default: 'StatusRoteiro'), statusRoteiroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'statusRoteiro.label', default: 'StatusRoteiro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
