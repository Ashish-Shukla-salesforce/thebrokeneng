

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full Slider - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-slider.css" rel="stylesheet">
        
 
<style>
    #wrap{
background-image: -ms-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Mozilla Firefox */ 
background-image: -moz-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Opera */ 
background-image: -o-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Webkit (Safari/Chrome 10) */ 
background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #FFFFFF), color-stop(1, #D3D8E8));
/* Webkit (Chrome 11+) */ 
background-image: -webkit-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* W3C Markup, IE10 Release Preview */ 
background-image: linear-gradient(to bottom, #FFFFFF 0%, #D3D8E8 100%);
background-repeat: no-repeat;
background-attachment: fixed;
}
legend{
	color:#141823;
	font-size:25px;
	font-weight:bold;
}
.signup-btn {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #578843);
  background-image: -moz-linear-gradient(top, #79bc64, #578843);
  background-image: -ms-linear-gradient(top, #79bc64, #578843);
  background-image: -o-linear-gradient(top, #79bc64, #578843);
  background-image: linear-gradient(to bottom, #79bc64, #578843);
  -webkit-border-radius: 4;
  -moz-border-radius: 4;
  border-radius: 4px;
  text-shadow: 0px 1px 0px #898a88;
  -webkit-box-shadow: 0px 0px 0px #a4e388;
  -moz-box-shadow: 0px 0px 0px #a4e388;
  box-shadow: 0px 0px 0px #a4e388;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #3b6e22  1px;
  text-decoration: none;
}

.signup-btn:hover {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
  background-image: -moz-linear-gradient(top, #79bc64, #5e7056);
  background-image: -ms-linear-gradient(top, #79bc64, #5e7056);
  background-image: -o-linear-gradient(top, #79bc64, #5e7056);
  background-image: linear-gradient(to bottom, #79bc64, #5e7056);
  text-decoration: none;
}
.navbar-default .navbar-brand{
		color:#fff;
		font-size:30px;
		font-weight:bold;
	}
.form .form-control { margin-bottom: 10px; }
@media (min-width:768px) {
	#home{
		margin-top:50px;
	}
	#home .slogan{
		color: #0e385f;
		line-height: 29px;
		font-weight:bold;
	}
}
</style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
          <a class="navbar-brand" href="#"><font size="6">Southern Spices</font></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#"><font size="4">Home</font>
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><font size="4">About</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><font size="4">Services</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.html"><font size="4">Contact</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp"><font size="4">SignUp/Login</font></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
        <br><br><br><br><br><br>
        <div class="container" id="wrap" >
	  <div class="row">
        <div class="col-md-8 col-md-offset-3">
            <form action="signup.jsp" method="post" accept-charset="utf-12" class="form" role="form">   <legend>Sign Up</legend>
                    <h4>It's will be the interesting journey.</h4>
                    <div class="row">
                        <div class="col-xs-8 col-md-8">
                            <input type="text" name="custid" value="" class="form-control input-lg" placeholder="Customer ID"  />                        </div>
                        <div class="col-xs-8 col-md-8">
                            <input type="text" name="name" value="" class="form-control input-lg" placeholder="Enter Your Name"  />                        </div>
                    
                    <div class="col-xs-8 col-md-8">
                    <input type="text" name="email" value="" class="form-control input-lg" placeholder="Your Email"  />
                    </div>
                    <div class="col-xs-8 col-md-8">
                    <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  />
                    </div>
                    <div class="col-xs-8 col-md-8">
                    <input type="password" name="confirm_password" value="" class="form-control input-lg" placeholder="Confirm Password"  />  
                    </div>
                    <div class="col-xs-8 col-md-8">
                    <input type="text" name="mob" value="" class="form-control input-lg" placeholder="Enter Mobile Number"  />
                    </div>
                        <div class="col-xs-8 col-md-8">
                             <input type="text" name="address" value="" class="form-control input-lg" placeholder="Address"  />   
                        </div></div>
                                    
                     <label>Gender : </label>                    <label class="radio-inline">
                        <input type="radio" name="gender" value="M" id=male />                        Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" value="F" id=female />                        Female
                    </label>
                     <label class="radio-inline">
                        <input type="radio" name="gender" value="T" id=trans />                        Transgender
                    </label>
                    <br />
              <span class="help-block">By clicking Create my account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit" name="add">
                        Create my account</button>
            </form>          
          </div>
</div>            
</div>
</div>
<br> <br> <br> <br>
<%
    if(request.getParameter("add")!=null)
    {

            String custid=request.getParameter("custid");
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String confirm_password=request.getParameter("confirm_password");
            String mob=request.getParameter("mob");
            String address=request.getParameter("address");
            String gender=request.getParameter("gender");
     if(password.equals(confirm_password))
     {
         
     
            com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="insert into customer(customer_id,customer_name,Email,mobile,Address,gender,password) values('"+custid+"','"+name+"','"+email+"','"+mob+"','"+address+"','"+gender+"','"+password+"')";
            int x=st.executeUpdate(s);
            if(x>0)
            {
                out.println("<script>alert('Signed Up Successfully,You can Login Now');</script>");
                RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
                
            }
     }
     else
     {
         out.println("<script>alert('Password Do not Match');</script>");
     }



    }

%>
    </body>
</html>
