package com.library

class Book {
	String title
	String author
	String isbn
	String dateBorrowed
	String returnDate

	String toString() {title}	

	static constraints = {
		title()
		author()
		isbn()
		dateBorrowed()
		returnDate()			
    }
}
