<%@ page import="com.library.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="course.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${courseInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="course.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="6" required="" value="${courseInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="course.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tutor" required="" value="${courseInstance?.tutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="course.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="department" required="" value="${courseInstance?.department}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${courseInstance?.description}"/>

</div>

