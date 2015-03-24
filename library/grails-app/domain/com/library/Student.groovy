package com.library

class Student {
	String name
	String email
	String studentId
	Course course

	static hasMany=[books: Book]

	String toString() {name}

	static constraints = {
		name()
		email email:true, unique:true
		studentId size: 8..8, unique:true
		course()
    }
}
