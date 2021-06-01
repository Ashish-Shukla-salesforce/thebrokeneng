package org.apache.jsp.admin;

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
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js\"></script>\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<style>\n");
      out.write("    body#LoginForm{ background-image:url(\"https://png.pngtree.com/thumb_back/fw800/back_pic/04/05/14/45580c40721caca.jpg\"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}\n");
      out.write("\n");
      out.write(".form-heading { color:#fff; font-size:23px;}\n");
      out.write(".panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}\n");
      out.write(".panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}\n");
      out.write(".login-form .form-control {\n");
      out.write("  background: #f7f7f7 none repeat scroll 0 0;\n");
      out.write("  border: 1px solid #d4d4d4;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  font-size: 14px;\n");
      out.write("  height: 50px;\n");
      out.write("  line-height: 50px;\n");
      out.write("}\n");
      out.write(".main-div {\n");
      out.write("  background: #ffffff none repeat scroll 0 0;\n");
      out.write("  border-radius: 2px;\n");
      out.write("  margin: 10px auto 30px;\n");
      out.write("  max-width: 38%;\n");
      out.write("  padding: 50px 70px 70px 71px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-form .form-group {\n");
      out.write("  margin-bottom:10px;\n");
      out.write("}\n");
      out.write(".login-form{ text-align:center;}\n");
      out.write(".forgot a {\n");
      out.write("  color: #777777;\n");
      out.write("  font-size: 14px;\n");
      out.write("  text-decoration: underline;\n");
      out.write("}\n");
      out.write(".login-form  .btn.btn-primary {\n");
      out.write("  background: #f0ad4e none repeat scroll 0 0;\n");
      out.write("  border-color: #f0ad4e;\n");
      out.write("  color: #ffffff;\n");
      out.write("  font-size: 14px;\n");
      out.write("  width: 100%;\n");
      out.write("  height: 50px;\n");
      out.write("  line-height: 50px;\n");
      out.write("  padding: 0;\n");
      out.write("}\n");
      out.write(".forgot {\n");
      out.write("  text-align: left; margin-bottom:30px;\n");
      out.write("}\n");
      out.write(".botto-text {\n");
      out.write("  color: #ffffff;\n");
      out.write("  font-size: 14px;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write(".login-form .btn.btn-primary.reset {\n");
      out.write("  background: #ff9900 none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write(".back { text-align: left; margin-top:10px;}\n");
      out.write(".back a {color: #444444; font-size: 13px;text-decoration: none;}\n");
      out.write("\n");
      out.write("    \n");
      out.write("</style> </head>\n");
      out.write(" <body id=\"LoginForm\">\n");
      out.write("<div class=\"container\">\n");
      out.write("<h1 class=\"form-heading\">Login Form</h1>\n");
      out.write("<div class=\"login-form\">\n");
      out.write("<div class=\"main-div\">\n");
      out.write("    <div class=\"panel\">\n");
      out.write("   <h2>Admin Login</h2>\n");
      out.write("   <p>Please enter your email and password</p>\n");
      out.write("   </div>\n");
      out.write("    <form id=\"Login\" method=\"post\" action=\"index.jsp\">\n");
      out.write("         <div class=\"form-group\">\n");
      out.write("\n");
      out.write("\n");
      out.write("             <select class=\"form-control\" name=\"bID\">\n");
      out.write("                 <option> Select your branch ID</option>\n");
      out.write("                 ");

                    DBConnect db1=new DBConnect();
    Connection con1=db1.getConnect();
    Statement st1=con1.createStatement();
    String s1="select branch_id from branch";
    ResultSet rs1=st1.executeQuery(s1);
    while(rs1.next())
    {
                     
      out.write("\n");
      out.write("                     <option>");
      out.print(rs1.getString(1));
      out.write("</option>\n");
      out.write("                     ");

    }
    
      out.write("\n");
      out.write("             </select>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <input type=\"text\" class=\"form-control\" id=\"inputEmail\" name=\"uname\" placeholder=\"UserName\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("            <input type=\"password\" class=\"form-control\" id=\"inputPassword\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"forgot\">\n");
      out.write("        <a href=\"reset.html\">Forgot password?</a>\n");
      out.write("</div>\n");
      out.write("        <button type=\"submit\" name=\"log\" class=\"btn btn-primary\">Login</button>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("<p class=\"botto-text\"> Designed by Ashish Shukla</p>\n");
      out.write("</div></div>\n");

if(request.getParameter("log")!=null)
{
    String bID=request.getParameter("bID");
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    DBConnect db=new DBConnect();
    Connection con=db.getConnect();
    Statement st=con.createStatement();
    String s="select * from admin where username='"+uname+"' and password='"+pass+"' and branch_id='"+bID+"'";
    ResultSet rs=st.executeQuery(s);
    if(rs.next())
    
    {
        HttpSession hs=request.getSession();
        hs.setAttribute("bID", bID);
        hs.setAttribute("uname", uname);

        response.sendRedirect("adminhome.jsp");
                
    }
    else
    {
        out.println("<script>alert('Invalid Username or password');</script>");
        response.sendRedirect("index.jsp");
    }
}







      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
