package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import com.DBConnect;
import java.sql.Statement;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write(" <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Full Slider - Start Bootstrap Template</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"css/full-slider.css\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\">Southern Spices</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item active\">\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Home\n");
      out.write("                <span class=\"sr-only\">(current)</span>\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"#\">About</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Services</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n");
      out.write("            </li>\n");
      out.write("            ");

                String cid=null;
            HttpSession hs=request.getSession();
            if(hs.isNew())
            {
            
            
            
      out.write("\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"login.jsp\">SignUp/Login</a>\n");
      out.write("            </li>\n");
      out.write("            ");

            }
            else
            {
                cid=hs.getAttribute("cid").toString();
                
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("              \n");
      out.write("          \n");
      out.write("        <a href=\"cart.jsp\" class=\"btn btn-info btn-lg\">\n");
      out.write("          <span class=\"glyphicon glyphicon-shopping-cart\"></span> Cart\n");
      out.write("        </a>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("            </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("            </li>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <header>\n");
      out.write("      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("        <ol class=\"carousel-indicators\">\n");
      out.write("          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\n");
      out.write("          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"2\"></li>\n");
      out.write("        </ol>\n");
      out.write("        <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("          <!-- Slide One - Set the background image for this slide in the line below -->\n");
      out.write("          <div class=\"carousel-item active\" style=\"background-image: url('Images/projectimage1.jpg')\">\n");
      out.write("            <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("              <h3>First Slide</h3>\n");
      out.write("              <p>This is a description for the first slide.</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Slide Two - Set the background image for this slide in the line below -->\n");
      out.write("          <div class=\"carousel-item\" style=\"background-image: url('Images/projectimage2.jpg')\">\n");
      out.write("            <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("              <h3>Second Slide</h3>\n");
      out.write("              <p>This is a description for the second slide.</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Slide Three - Set the background image for this slide in the line below -->\n");
      out.write("          <div class=\"carousel-item\" style=\"background-image: url('Images/projectimage3.png')\">\n");
      out.write("            <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("              <h3>Third Slide</h3>\n");
      out.write("              <p>This is a description for the third slide.</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <a class=\"carousel-control-prev\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"prev\">\n");
      out.write("          <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("          <span class=\"sr-only\">Previous</span>\n");
      out.write("        </a>\n");
      out.write("        <a class=\"carousel-control-next\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"next\">\n");
      out.write("          <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("          <span class=\"sr-only\">Next</span>\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Page Content -->\n");
      out.write("    <section class=\"py-5\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <h1>Full Slider by Start Bootstrap</h1>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");

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
            
            
            
      out.write("\n");
      out.write("            <div class=\"col-lg-4 col-md-6 mb-4\">\n");
      out.write("                <div class=\"card h-100\">\n");
      out.write("                    <a href=\"#\"><img class=\"card-img-top\" src=");
      out.print(img);
      out.write(" alt=\"\"></a>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h4 class=\"card-title\">\n");
      out.write("                            <a href=\"#\">");
      out.print(rs.getString(3));
      out.write("</a>\n");
      out.write("                        </h4>\n");
      out.write("                        <h5> &#x20B9;");
      out.print(rs.getInt(4));
      out.write("</h5>\n");
      out.write("                        <p class=\"card-text\">");
      out.print(rs.getString(7));
      out.write("</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-footer\">\n");
      out.write("                        <h6>\n");
      out.write("                            <form method=\"post\" action=\"index.jsp\">\n");
      out.write("                                <input type=\"hidden\" name=\"pid\" value=");
      out.print(rs.getString(1));
      out.write(">\n");
      out.write("                                <input type=\"hidden\" name=\"cid\" value=");
      out.print(cid);
      out.write(">\n");
      out.write("                                <input type=\"hidden\" name=\"price\" value=");
      out.print(rs.getInt(4));
      out.write(">\n");
      out.write("                                <input type=\"hidden\" name=\"img\" value=");
      out.print(rs.getString(6));
      out.write(">\n");
      out.write("<input type=\"hidden\" name=\"tot\" value=");
      out.print(tot);
      out.write('>');
      out.write('\n');

if(hs.getAttribute("cid")!=null)
{
    
      out.write("\n");
      out.write("                                <button class=\"btn btn-success\" type=\"submit\" name=\"cart\">Add to Cart</button> \n");
      out.write("                            </form>\n");
      out.write("    ");

}

      out.write("\n");
      out.write("    \n");
      out.write("                        </h6>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                                ");

            }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");

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





      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer class=\"py-5 bg-dark\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <p class=\"m-0 text-center text-white\">Copyright &copy; Your Website 2018</p>\n");
      out.write("      </div>\n");
      out.write("      <!-- /.container -->\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
