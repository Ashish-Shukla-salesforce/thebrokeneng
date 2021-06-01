

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <style>
        body{ background-image:url("https://s3.envato.com/files/256760345/coffpl_nov-7.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
    </style>
    
</head>
    <body>
       
      <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Southern Spices
                    </a>
                </li>
                <li>
                    <a href="profile">Profile</a>
                </li>
                <li>
                    <a href="changepass.jsp">Change Password</a>
                </li>
                <li>
                    <a href="addcat.jsp">Add/Remove Category</a>
                </li>
                <li>
                    <a href="addpro.jsp">Add/Remove Product</a>
                </li>
                 <li>
                    <a href="addbranch.jsp">Add/Remove Branch</a>
                </li>
                <li>
                    <a href="status">Inbox</a>
                </li>
                <li>
                    <a href="userhistory">Registered Users</a>
                </li>
                <li>
                    <a href="logout.jsp">Log Out</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1></h1>
                        <p></p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Slider</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
<!---<div class="span3 well">
    <div class="container-fluid">
    <div class="row">
        <div class="col-lg-offset-8">
        </div>
        <div class="col-sm-8">
      <legend>New to WebApp? Sign up!</legend>
    <form accept-charset="UTF-8" action="" method="post">
		<input class="span3" name="name" placeholder="Full Name" type="text"> 
        <input class="span3" name="username" placeholder="Username" type="text">
        <input class="span3" name="password" placeholder="Password" type="password"> 
        <button class="btn btn-warning" type="submit">Sign up for WebApp</button>
    </form></div>
    </div></div></div>
    <!-- jQuery -->
 <div class="container">
     <div class="row">
         <div class="col-lg-offset-10"></div>
         <div class="row col-md-8 col-md-offset-2 custyle">
    <div class="jumbotron">
        <div class="panel-heading">
            <center><h1>Change Password</h1></center>
        </div>
        <div class="panel-body">
            <form method="post" action="changepass.jsp">
                <input type="password" class="form-control" name="cpass" placeholder="Enter current password"><br>
                <input type="password" class="form-control" name="npass" placeholder="Enter new password"><br>
                  <input type="password" class="form-control" name="rpass" placeholder="Re- enter new password ">
                <input type="submit" name="add" value="Change Password" class="btn btn-lg btn-success btn-block">
            </form>
        </div></div>
    </div></div></div>
    
    
    
    <%
        if(request.getParameter("add")!=null)
   {
        HttpSession hs=request.getSession();
        String bid=hs.getAttribute("bid").toString();
        String uname=hs.getAttribute("uname").toString();
        out.println("<script>alert(bid);</script>");
        out.println("<script>alert(uname);</script>");
   
        
        
            String cpass=request.getParameter("cpass");
            String npass=request.getParameter("npass");
            String rpass=request.getParameter("rpass");
            if(npass.equals(rpass))
            {
                    com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="update admin set password='"+npass+"' where username='"+uname+"'";
            int x=st.executeUpdate(s);
            if(x>0)
            {
                out.println("<script>alert('Password Successfully Changed');</script>");
                response.sendRedirect("index.jsp");
            }
            }
    
    
   }
    %>
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    </body>
</html>