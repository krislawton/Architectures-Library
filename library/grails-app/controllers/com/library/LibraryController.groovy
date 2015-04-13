package com.library

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*

@Transactional(readOnly = true)
class LibraryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Library.list(params), model:[libraryInstanceCount: Library.count()]
    }

    def show(Library libraryInstance) {
		 if(params.id && Book.exists(params.id)) {
			render Book.findById(params.id) as JSON
		} else {
			render Book.list() as JSON
		}
    }

    def create() {
        respond new Library(params)
    }

    @Transactional
    def save(Library libraryInstance) {
        if (libraryInstance == null) {
            notFound()
            return
        }

        if (libraryInstance.hasErrors()) {
            respond libraryInstance.errors, view:'create'
            return
        }

        libraryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'library.label', default: 'Library'), libraryInstance.id])
                redirect libraryInstance
            }
            '*' { respond libraryInstance, [status: CREATED] }
        }
    }

    def edit(Library libraryInstance) {
        respond libraryInstance
    }

    @Transactional
    def update(Library libraryInstance) {
        if (libraryInstance == null) {
            notFound()
            return
        }

        if (libraryInstance.hasErrors()) {
            respond libraryInstance.errors, view:'edit'
            return
        }

        libraryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Library.label', default: 'Library'), libraryInstance.id])
                redirect libraryInstance
            }
            '*'{ respond libraryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Library libraryInstance) {

        if (libraryInstance == null) {
            notFound()
            return
        }

        libraryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Library.label', default: 'Library'), libraryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

	def listBooks = {
		render Book.list() as JSON
	}

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'library.label', default: 'Library'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
