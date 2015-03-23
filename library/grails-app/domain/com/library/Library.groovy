package com.library

class Library {
	String name
	String location
	String openingHours
	String librarian

	static hasMany=[students: Student, books: Book, librarians: Librarian]

	String toString() {name}

	static constraints = {
		name()
		location()
		openingHours()
		librarian()
    }
}
