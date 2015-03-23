package com.library

class Book {
	String title
	String author
	String isbn
	String dateBorrowed
	String returnDate
	String student

    static constraints = {
		title()
		author()
		isbn()
		dateBorrowed()
		returnDate()
		student()				
    }
}
