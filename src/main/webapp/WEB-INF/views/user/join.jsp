<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
</head>
<body id="page-top" >
	<div id="wrapper">
		<c:import url="/WEB-INF/views/templates/sidebar.jsp"></c:import>
	
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/templates/topbar.jsp"></c:import>
				<div class="container-fluid">
					
					
					<div class="card o-hidden border-0 shadow-lg my-5">
			            <div class="card-body p-0">
			                <!-- Nested Row within Card Body -->
			                <div class="row">
			                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
			                    <div class="col-lg-7">
			                        <div class="p-5">
			                            <div class="text-center">
			                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
			                            </div>
			                            <form:form modelAttribute="userVO" cssClass="user" method="post" enctype="multipart/form-data">
			                                <div class="form-group">
			                                    <form:input cssClass="form-control form-control-user" id="username"
			                                        path="username" placeholder="username" />
			                                    <div>
			                                    	<form:errors path="username"></form:errors>
			                                    </div>    
			                                </div>

			                                <div class="form-group row">
			                                    <div class="col-sm-6 mb-3 mb-sm-0">
			                                        <form:password cssClass="form-control form-control-user"
			                                            id="password" path="password" placeholder="Password" />
			                                        <div>
			                                    		<form:errors path="password"></form:errors>
			                                    	</div> 
			                                    </div>
			                                    <div class="col-sm-6">
			                                        <form:password cssClass="form-control form-control-user"
			                                            id="passwordCheck" path="passwordCheck" placeholder="Repeat Password" />
				                                    <div>
			                                    		<form:errors path="passwordCheck"></form:errors>
			                                    	</div> 	                                            
			                                    </div>
			                                </div>
			                                
			                                <div class="form-group">
			                                    <form:input cssClass="form-control form-control-user" id="name"
			                                        path="name" placeholder="name" />
			                                </div>
			                                
			                                <div class="form-group">
			                                    <form:input cssClass="form-control form-control-user" id="phone"
			                                        path="phone" placeholder="phone" />
			                                </div>		
			                                
			                                <div class="form-group">
			                                    <form:input cssClass="form-control form-control-user" id="email"
			                                        path="email" placeholder="email" />
			                                        <div>
			                                    		<form:errors path="email"></form:errors>
			                                    	</div> 			                                        
			                                </div>
			                                
			                                <div class="form-group">
			                                	
			                                    <input type="date" class="form-control form-control-user" id="birth"
			                                        name="birth" value="">
			                                  	<div>
			                                    	<form:errors path="birth"></form:errors>
			                                    </div> 
			                                </div>	
			                                
			                                <div class="form-group">
			                                    <input type="file" id="avatar" name="avatar">
			                                </div>
			                                <button class="btn btn-primary btn-user btn-block">
			                                    Register Account
			                                </button>
			                                <hr>
			                                <a href="index.html" class="btn btn-google btn-user btn-block">
			                                    <i class="fab fa-google fa-fw"></i> Register with Google
			                                </a>
			                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
			                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
			                                </a>
			                            </form:form>
			                            <hr>
			                            <div class="text-center">
			                                <a class="small" href="forgot-password.html">Forgot Password?</a>
			                            </div>
			                            <div class="text-center">
			                                <a class="small" href="login.html">Already have an account? Login!</a>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
        			</div>
					
				<!-- Join End -->	
				</div>
			</div>
			<!-- End Content -->
			<c:import url="/WEB-INF/views/templates/foot.jsp"></c:import>
		</div>
		<!-- End Content-wrapper -->	
	</div>
	<!-- End wrapper -->

	
	<c:import url="/WEB-INF/views/templates/footer.jsp"></c:import>
</body>
</html>