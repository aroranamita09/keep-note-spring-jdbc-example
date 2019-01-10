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
        <form action='add' method="post">
            <label>Note Title:</label>
            <input type="text" id="noteTitle" name="noteTitle" />
            <br/>
            <label>Note Content:</label>
            <input type="text" id="noteContent" name="noteContent" />
            <br/>
            <label>Note Status:</label>
            <select name="noteStatus">
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
  	<table border="1" width="70%" cellpadding="2">  
		<tr>
			<th>NoteId</th>
			<th>Title</th>
			<th>Content</th>
			<th>Status</th>
			<th>Created At</th>
			<th>Delete</th>
			<th>Update</th>
			</tr>  
		  <c:forEach var="note" items="${noteList}">  
		  <tr>  
			  <td>${note.noteId}</td>  
			  <td>${note.noteTitle}</td>  
			  <td>${note.noteContent}</td>  
			  <td>${note.noteStatus}</td>  
			  <td>${note.createdAt}</td>
			  <td>
			  <form action="delete">
					<input type="hidden" name="noteId" value="${note.noteId}" />
					<input type="submit" value="Delete">
				</form>
				</td>
			  <td>
			  <form action="updating">
					<input type="hidden" name="noteId" value="${note.noteId}" />
					<input type="submit" value="Update">
				</form>
				</td>
		  </tr>  
  		</c:forEach>  
  	</table> 
</body>
</html>