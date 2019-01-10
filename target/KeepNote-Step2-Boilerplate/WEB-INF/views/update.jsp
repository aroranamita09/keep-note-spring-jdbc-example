<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>

    <!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
         button. Handle errors like empty fields -->
         
    <div>
        <form action='update' method="get">
        	<input type="hidden" id="noteId" name="noteId" value=${note.noteId} />
            <label>Note Title:</label>
            <input type="text" id="noteTitle" name="noteTitle" value=${note.noteTitle} />
            <br/>
            <label>Note Content:</label>
            <input type="text" id="noteContent" name="noteContent" value=${note.noteContent} />
            <br/>
            <label>Note Status:</label>
            <select name="noteStatus" value=${note.noteStatus}>
            	<option value="Completed">Completed</option>
                <option value="active">active</option>
                <option value="inactive">inactive</option>
            </select>
            <br/>
            <button type="submit" >Submit</button>
        </form>
    </div>
    <c:if test="${!errorMessage.isEmpty()}">
        <p>${errorMessage}</p>
    </c:if>
  	
</body>
</html>