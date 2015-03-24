<%@ page import="com.library.Library" %>



<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="library.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${libraryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="library.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${libraryInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'openingHours', 'error')} required">
	<label for="openingHours">
		<g:message code="library.openingHours.label" default="Opening Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="openingHours" required="" value="${libraryInstance?.openingHours}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'librarian', 'error')} required">
	<label for="librarian">
		<g:message code="library.librarian.label" default="Librarian" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="librarian" required="" value="${libraryInstance?.librarian}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="library.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${com.library.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.books*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'librarians', 'error')} ">
	<label for="librarians">
		<g:message code="library.librarians.label" default="Librarians" />
		
	</label>
	<g:select name="librarians" from="${com.library.Librarian.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.librarians*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="library.students.label" default="Students" />
		
	</label>
	<g:select name="students" from="${com.library.Student.list()}" multiple="multiple" optionKey="id" size="5" value="${libraryInstance?.students*.id}" class="many-to-many"/>

</div>

