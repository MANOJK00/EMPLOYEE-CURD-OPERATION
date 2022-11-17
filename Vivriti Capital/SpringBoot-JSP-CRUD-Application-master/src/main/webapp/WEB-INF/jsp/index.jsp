<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"></jsp:include>

<h3>User Registration</h3>
<br>
<form action='/index/add' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
 
        <tr>
            <td><b>FirstName</b></td> 
            <td><input type='text' name='firstname' class='form-control'  required/></td>
        </tr>
 
        <tr>
            <td><b>Lastname</b></td>
            <td><input type='text' name='lastname' class='form-control' required /></td>
        </tr>
 
        <tr>
            <td><b>Adress</b></td>
            <td><input type='text' name='adress' class='form-control' size="20" required/></td>
            
        </tr>

        <tr>
            <td><b>Department</b></td>
            <td><input type='text' name='department' class='form-control' required /></td>
        </tr>
  
        <tr>
            <td><b>Mobilenumber</b></td>
            <td><input type='text' name='mobilenumber' class='form-control' required /></td>
        </tr>
        
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Register</button>
            </td>
        </tr>
 
    </table>
    <b><c:out value="${danger}"></c:out></b>
</form>



<h5>List Of Users</h5>
<br>
<table class="table table-hover">

    <thead>
      <tr>
        <th><b>User FirstName</b></th>
        <th><b>User Lastname</b></th>
        <th><b>User Adress</b></th>
        <th><b>Department</b></th>
        <th><b>Mobilenumber</b></th>
        <th><b>Transactions</b></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="lou">
      <tr>
        <td><c:out value="${lou.firstname}"></c:out></td>
        <td><c:out value="${lou.lastname}"></c:out></td>
        <td><c:out value="${lou.adress}"></c:out></td>
        <td><c:out value="${lou.department}"></c:out></td>
        <td><c:out value="${lou.mobilenumber}"></c:out></td>


        

			 <td>
             <a href="/index/${lou.id}/edit">
                <button type="submit" class="btn btn-primary">Edit User</button>
                </a>
            </td>
            <td>
             <a href="/index/${lou.id}/delete">
                <button type="submit" class="btn btn-primary">Delete User</button>
                </a>
            </td>
      </tr>

          </c:forEach>
    </tbody>
  </table>
</div>

<jsp:include page="footer.jsp"></jsp:include>