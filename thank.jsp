

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full Slider - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-slider.css" rel="stylesheet">
        
 
    </head>
    <body>
           <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Southern Spices</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            <%
                String cid=null;
            HttpSession hs=request.getSession();
            if(hs.isNew())
            {
            
            
            %>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">SignUp/Login</a>
            </li>
            <%
            }
            else
            {
                cid=hs.getAttribute("cid").toString();
                %>
                <li class="nav-item">
              
          
        <a href="cart.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Cart
        </a>
      
      
      
            </li>
                <li class="nav-item">
              <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
            <%
            }
            %>
          </ul>
        </div>
      </div>
           </nav><br><br><br><br>
          <img src="Images/th.jpg" width="400">
          <h1 style="font-family:algerian;color: #0062cc">Your order has been placed successfully.</h1>
          <%
            com.DBConnect db1=new DBConnect();
            Connection con=db1.getConnect();
            Statement st=con.createStatement();
            String s1="select * from customer where customer_id='"+cid+"'";
            ResultSet rs=st.executeQuery(s1);
            if(rs.next())
            {
                String add=rs.getString(5);
            
            %>
            <h1 style="font-family:algerian;color: #0062cc">Your order will be delivered to <%=add%> in 40 minutes.</h1>
            <%
            }
            
          
          
          
          %>
    </body>
</html>
