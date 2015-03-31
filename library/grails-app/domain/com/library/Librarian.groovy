package com.library

class Librarian {
	String name
	String email
	String username
	String password
	String telephone

	String toString() {name}

	static constraints = {
		name()
		email email:true, unique:true
		username unique:true
		password()
		telephone()
    }
}
