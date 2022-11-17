<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<jsp:include page="header.jsp"></jsp:include>

<div class="container">

<h3>User Registration</h3>
<form action='/index/update' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
 
        <tr>
            <td><b>FirstName</b></td>
            <td><input type='text' name='firstname' class='form-control' value="${user.firstname}" /></td>
        </tr>
 
        <tr>
            <td><b>Lastname</b></td>
            <td><input type='text' name='lastname' class='form-control' value="${user.lastname}" /></td>
        </tr>
 
        <tr>
            <td><b>Adress</b></td>
            <td><input type='text' name='adress' class='form-control' size="20" value="${user.adress}" /></td>
            
        </tr>
        
        <tr>
            <td><b>Department</b></td>
            <td><input type='text' name='department' class='form-control' value="${user.department}" /></td>
        </tr>

        <tr>
            <td><b>Mobilenumber</b></td>
            <td><input type='text' name='mobilenumber' class='form-control' value="${user.mobilenumber}" /></td>
        </tr>

        </tr>
 			<input type='hidden' id='id' rows='5' class='form-control' name='id' value="${user.id}"/>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Update User Information</button>
            </td>
        </tr>
 
    </table>
</form>


</div>

<jsp:include page="footer.jsp"></jsp:include>