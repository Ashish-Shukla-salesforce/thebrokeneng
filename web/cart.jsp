
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
margin-top: 20px;
}
</style>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-xs-8">
<div class="panel panel-info">
<div class="panel-heading">
<div class="panel-title">
<div class="row">
<div class="col-xs-6">
<h5><span class="glyphicon glyphicon-shopping-cart"></span>Southern Spices Cart</h5>
</div>
    <div class="col-xs-6"><a href="index.jsp">
<button type="button" class="btn btn-primary btn-sm btn-block">
<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
</button></a>
</div>
</div>
</div>
</div>
    <%
        int tot=0;
        int gtot=0;
        HttpSession hs=request.getSession();
        String custid=hs.getAttribute("cid").toString();
    com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from cart where customer_id='"+custid+"'";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
                
            String img="Images/"+rs.getString(7);
            //out.println(img);
                 tot=rs.getInt(3)*rs.getInt(2);
                 gtot=gtot+tot;
                         
    %>
    
    
    
    
<div class="panel-body">
<div class="row">
<div class="col-xs-2"><img class="img-responsive" src=<%=img%> height="100" wiidth="100">
</div>
<div class="col-xs-4">
    <h4 class="product-name"><strong><%=rs.getString(5)%></strong>
</h4>
</div>
<div class="col-xs-6">
<div class="col-xs-6 text-right">
    <h6><strong><%=rs.getInt(6)%><span class="text-muted">x</span></strong></h6>
</div>
<div class="col-xs-4">
    <form method="post" action="cart.jsp">
        <input type="hidden" value=<%=rs.getString(5)%> name="pid">
        <input type="hidden" value=<%=rs.getString(4)%> name="cid">
        
    <input type="text" class="form-control input-sm" name="quan" value=<%=rs.getInt(2)%>>
</div>
<div class="col-xs-2">

</div>
</div>

<div class="col-xs-3">
<button type="submit"  name="up" class="btn btn-default btn-sm btn-block">
Update cart
</button></form>
</div>
<form method="post" action="cart.jsp">
     <input type="hidden" value=<%=rs.getString(5)%> name="pid">
        <input type="hidden" value=<%=rs.getString(4)%> name="cid">
<button type="submit" class="btn btn-link btn-xs" name="del">
<span class="glyphicon glyphicon-trash"> </span>
</button></form>
</div>



<%
            }
            %>

            <div class="panel-footer">
<div class="row text-center">
<div class="col-xs-9">
<h4 class="text-right">Total <strong>&#x20B9;<%=gtot%></strong></h4>
</div>
<div class="col-xs-3"><a href="thank.jsp">
<button type="button" class="btn btn-success btn-block">
Checkout
</button></a>
</div>
</div>
</div>


</div></div> 
<%
if(request.getParameter("up")!=null)
{
            String cid=request.getParameter("cid");
            String pid=request.getParameter("pid");
            int quan=Integer.parseInt(request.getParameter("quan"));
            com.DBConnect db1=new DBConnect();
            Connection con1=db1.getConnect();
            Statement st1=con1.createStatement();
            String s1="update cart set quantity="+quan+" where product_id='"+pid+"'and customer_id='"+cid+"'";
            int x=st1.executeUpdate(s1);
            if(x>0)
            {
                out.println("<script>alert('Cart updated');</script>");
                response.sendRedirect("cart.jsp");
            }
}






%>

<%
if(request.getParameter("del")!=null)
{
    String cid=request.getParameter("cid");
            String pid=request.getParameter("pid");
             com.DBConnect db1=new DBConnect();
            Connection con1=db1.getConnect();
            Statement st1=con1.createStatement();
            String ss="delete from cart where product_id='"+pid+"'and customer_id='"+cid+"'";
            int x=st1.executeUpdate(ss);
            if(x>0)
            {
                response.sendRedirect("cart.jsp");
            }
}




%>
</body>
</html>
