<%@ page import="com.library.Librarian" %>



<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="librarian.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${librarianInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="librarian.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${librarianInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="librarian.username.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${librarianInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="librarian.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${librarianInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: librarianInstance, field: 'telephone', 'error')} required">
	<label for="telephone">
		<g:message code="librarian.telephone.label" default="Telephone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephone" required="" value="${librarianInstance?.telephone}"/>

</div>

