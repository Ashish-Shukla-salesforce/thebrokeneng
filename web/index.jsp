

<%@page import="java.sql.ResultSet"%>
<%@page import="com.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('Images/projectimage1.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('Images/projectimage2.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('Images/projectimage3.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->
    <section class="py-5">
      <div class="container">
        <h1>Full Slider by Start Bootstrap</h1>
        <div class="row">
            <%
            String img=null;
            String prodesc=null;
            int price=0;
            int q=1;
            int tot=0;
            com.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from product";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
             img="Images/"+rs.getString(6);
            tot=rs.getInt(4)*q;
            
            
            %>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src=<%=img%> alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#"><%=rs.getString(3)%></a>
                        </h4>
                        <h5> &#x20B9;<%=rs.getInt(4)%></h5>
                        <p class="card-text"><%=rs.getString(7)%></p>
                    </div>
                    <div class="card-footer">
                        <h6>
                            <form method="post" action="index.jsp">
                                <input type="hidden" name="pid" value=<%=rs.getString(1)%>>
                                <input type="hidden" name="cid" value=<%=cid%>>
                                <input type="hidden" name="price" value=<%=rs.getInt(4)%>>
                                <input type="hidden" name="img" value=<%=rs.getString(6)%>>
<input type="hidden" name="tot" value=<%=tot%>>
<%
if(hs.getAttribute("cid")!=null)
{
    %>
                                <button class="btn btn-success" type="submit" name="cart">Add to Cart</button> 
                            </form>
    <%
}
%>
    
                        </h6>
                    </div>
                </div>
            </div>
                                <%
            }
            %>
        </div>
      </div>
    </section>
<%
if(request.getParameter("cart")!=null)
{
            
            String custid=request.getParameter("cid");
            String proid=request.getParameter("pid");
             price=Integer.parseInt(request.getParameter("price"));
            tot=Integer.parseInt(request.getParameter("tot")); 
            String image=request.getParameter("img");
            com.DBConnect db1=new DBConnect();
            Connection con1=db1.getConnect();
            Statement st1=con1.createStatement();
            String ss="select * from cart where customer_id='"+custid+"' and product_id='"+proid+"'";
            ResultSet rss=st1.executeQuery(ss);
            if(rss.next())
            {
                Statement st2=con1.createStatement();
                String s2="update cart set quantity=quantity+1 where customer_id='"+custid+"' and product_id='"+proid+"'";
                int x=st2.executeUpdate(s2);
                        
            }
            else
            {
            Statement st3=con1.createStatement();
            String s1="insert into cart(total_price,customer_id,product_id,unit_price,product_img) values("+tot+",'"+custid+"','"+proid+"',"+price+",'"+image+"')";
            int x=st1.executeUpdate(s1);
            if(x>0)
            {
                out.println("<script>alert('Cart Updated');</script>");
            }
            }
    }




%>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
    </body>
</html>

