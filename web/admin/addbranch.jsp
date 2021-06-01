

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
                    <a href="chpass">Change Password</a>
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
            <center><h1>Add Branch</h1></center>
        </div>
        <div class="panel-body">
            <form method="post" action="addbranch.jsp">
                <input type="text" class="form-control" name="bID" placeholder="Enter branch ID"><br>
                <input type="text" class="form-control" name="bname" placeholder="Enter branch name"><br>
                <input type="text" class="form-control" name="badd" placeholder="Enter branch address"><br>
                <input type="text" class="form-control" name="btime" placeholder="Enter branch time">
                <input type="submit" name="add" value="Add Branch" class="btn btn-lg btn-success btn-block">
            </form>
        </div></div>
    </div></div></div>
    <%
        if(request.getParameter("add")!=null)
        {
            String bID=request.getParameter("bID");
            String bname=request.getParameter("bname");
            String badd=request.getParameter("badd");
            String btime=request.getParameter("btime");
            com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="insert into branch (branch_id,branch_name,branch_address,branch_time) values('"+bID+"','"+bname+"','"+badd+"','"+btime+"')";
            int x=st.executeUpdate(s);
            if(x>0)
            {
                out.println("<script>alert('Branch Inserted');</script>");
            }
        }
    %>
    
    <div class="container">
    <div class="row col-md-8 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    
        <tr>
            <th>Branch ID</th>
            <th>Branch Name</th>
            <th>Branch Address</th>
            <th>Branch Time</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
    <%
       com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from branch";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
        
%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
        <%
String status=rs.getString(5);
        
        %>
                <td class="text-center">
<form method="post" action="addbranch.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="bid">
    <input type="submit" name="act" class="btn btn-info btn-xs" value="Active">
</form>
                
                <form method="post" action="addbranch.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="bid">
    <input type="submit" name="act" class="btn btn-danger btn-xs" value="Inactive">
</form>
                </td>
                
            </tr>
            <%
            }
            %>
    </table>
    </div>
</div>
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

