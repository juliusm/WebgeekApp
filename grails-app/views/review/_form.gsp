<%@ page import="com.webgeekapp.Review" %>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'feedback', 'error')} ">
    <label for="feedback">
        <g:message code="review.feedback.label" default="Feedback" />

    </label>
    <g:select from="['positive':1, 'negative' : 0]" optionValue="key" optionKey="value" name="feedback" value="${reviewInstance?.feedback}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="review.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${reviewInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="review.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${reviewInstance?.description}"/>
</div>



