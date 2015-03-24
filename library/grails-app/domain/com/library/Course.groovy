package com.library

class Course {
	String title
	String code
	String tutor
	String department
	String description

	String toString() {title}

	static constraints = {
		title()
		code size: 6..6
		tutor()
		department()
		description()
    }
}
