/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.52
 * Generated at: 2021-09-16 17:22:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Manage_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>????????????</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("<style>\r\n");
      out.write("input[type=\"file\"] {\r\n");
      out.write("	position: fixed;\r\n");
      out.write("	right: 100%;\r\n");
      out.write("	bottom: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".custom-file-upload {\r\n");
      out.write("	border: 1px solid #ccc;\r\n");
      out.write("	display: inline-block;\r\n");
      out.write("	padding: 6px 12px;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("img{float=none;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"divform\">\r\n");
      out.write("		<h1>????????????</h1>\r\n");
      out.write("		<form action=\"./ProServlet\" method=\"post\">\r\n");
      out.write("		\r\n");
      out.write("			<!-- ???????????? -->\r\n");
      out.write("			<strong>???????????? </strong>\r\n");
      out.write("			<input type=\"text\" class=\"leader\" name=\"leader\" required placeholder=\"???????????????\">\r\n");
      out.write("			<span class=\"spleader\"></span><br><span class=\"spanText\">(1.????????????2.???????????????3.?????????????????????)</span><br>\r\n");
      out.write("			\r\n");
      out.write("			<!-- ???????????? -->\r\n");
      out.write("			<strong>???????????? </strong><input type=\"text\" name=\"productName\" required class=\"productname\" placeholder=\"????????????\">\r\n");
      out.write("			<span class=\"spproductname\"></span><br><br>\r\n");
      out.write("			\r\n");
      out.write("						<!-- ?????? -->\r\n");
      out.write("			<div style=\"float:right;\">\r\n");
      out.write("			<label for=\"file-upload\" class=\"custom-file-upload\"><i class=\"fa fa-cloud-upload\"></i> ????????????</label> \r\n");
      out.write("			<input id=\"file-upload\" type=\"file\" name=\"img\" class=\"upl\" />\r\n");
      out.write("			    <div>\r\n");
      out.write("        			<img class=\"preview\" style=\"max-width: 150px; max-height: 150px;\">\r\n");
      out.write("       				<div class=\"size\"></div>\r\n");
      out.write("    			</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- ?????? -->\r\n");
      out.write("			<strong>?????? </strong><input type=\"text\" class=\"price\" required name=\"price\" maxlength=\"6\" size=\"3\">\r\n");
      out.write("			\r\n");
      out.write("			<!-- ?????? -->\r\n");
      out.write("			<strong>?????? </strong><input type=\"text\" name=\"quantity\" required class=\"quantity\" maxlength=\"3\" size=\"3\"><br>\r\n");
      out.write("			\r\n");
      out.write("			<!-- ?????? -->\r\n");
      out.write("			<strong>?????? </strong><input type=\"text\" class=\"discount\" required name=\"discount\" maxlength=\"2\" size=\"3\" placeholder=\"?????????\">\r\n");
      out.write("			<span class=\"spdiscount\"></span><br> \r\n");
      out.write("			\r\n");
      out.write("			<!-- ????????? -->\r\n");
      out.write("			<strong>????????? </strong><input type=\"text\" class=\"newprice\" name=\"newprice\" size=\"3\" readonly><br>\r\n");
      out.write("			\r\n");
      out.write("			<!-- ?????? -->\r\n");
      out.write("			<strong>?????? </strong><input type=\"date\" name=\"date\" size=\"4\" id=\"dt\" readonly><br><br>\r\n");
      out.write("			\r\n");
      out.write("			<!-- ????????? -->\r\n");
      out.write("			<strong>????????? </strong><input type=\"date\" required name=\"deadline\" size=\"4\" id=\"dat\" ><br><br>\r\n");
      out.write("			\r\n");
      out.write("<br><br> \r\n");
      out.write("			\r\n");
      out.write("			<!-- ?????? -->\r\n");
      out.write("			<input type=\"submit\" id=\"sbtn\" name=\"gSubmit\" style=\"margin-top: 50px;\" class=\"sgbtn\">\r\n");
      out.write("			<a href=\"Home.jsp\"><input type=\"button\" name=\"cancel\" class=\"sgbtn\" value=\"??????\"></a>\r\n");
      out.write("			<input type=\"button\" class=\"ssgbtn\" value=\"????????????\" style=\"margin-left:200px\">\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("	<script src=\"https://code.jquery.com/jquery-3.6.0.js\"></script>\r\n");
      out.write("	<script>\r\n");
      out.write("    	document.getElementById(\"dt\").valueAsDate = new Date();\r\n");
      out.write("\r\n");
      out.write("	$(function(){\r\n");
      out.write("		// ???????????????\r\n");
      out.write("		$('.price,.discount').on('change blur focus load',function(){\r\n");
      out.write("		if($('.discount').val()<10){\r\n");
      out.write("			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/10));\r\n");
      out.write("			$('.spdiscount').html('');\r\n");
      out.write("		}else if($('.discount').val()>10&&$('.discount').val()<100){\r\n");
      out.write("			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/100));\r\n");
      out.write("			$('.spdiscount').html('');\r\n");
      out.write("		}else{\r\n");
      out.write("			$('.spdiscount').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\");\r\n");
      out.write("		}\r\n");
      out.write("		});\r\n");
      out.write("		// ??????????????????\r\n");
      out.write("			$('.leader').on('blur',function(){\r\n");
      out.write("		let leaderval = $('.leader').val();\r\n");
      out.write("		let leaderlen = leaderval.length;\r\n");
      out.write("		if(leaderlen==0){\r\n");
      out.write("			$('.spleader').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\")\r\n");
      out.write("		}else if(leaderlen<2){\r\n");
      out.write("			$('.spleader').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\")\r\n");
      out.write("		}else if(leaderlen>1){\r\n");
      out.write("			for(let i=0;i<leaderlen;i++){\r\n");
      out.write("				let ch = leaderval.charCodeAt(i);\r\n");
      out.write(" 				if (ch >= 0x4e00 && ch <= 0x9fff) {flag = true;}\r\n");
      out.write(" 				else {flag = false; break;}\r\n");
      out.write("			}\r\n");
      out.write("			if (flag){$('.spleader').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/1828/1828640.png'>\")}\r\n");
      out.write("			else {$('.spleader').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\")}\r\n");
      out.write("		}\r\n");
      out.write("	});\r\n");
      out.write("		// ????????????????????????\r\n");
      out.write("		$('.productname').on('blur',function(){\r\n");
      out.write("				let productname = $('.productname').val();\r\n");
      out.write("				if(productname.length==0){\r\n");
      out.write("			$('.spproductname').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\")\r\n");
      out.write("				}else{\r\n");
      out.write("			$('.spproductname').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/1828/1828640.png'>\")\r\n");
      out.write("				}\r\n");
      out.write("	});\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("        $('.ssgbtn').on('click',function(){\r\n");
      out.write("            let firstname=[\"???\",\"??????\",\"???\",\"???\",\"??????\",\"??????\",\"??????\",\"??????\",\"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\",\"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\", \"???\"];\r\n");
      out.write("            let name=[\"???\",\"??????\",\"???\",\"??????\",\"??????\",\"??????\",\"??????\",\"??????\",\"??????\", \"???\", \"??????\", \"??????\", \"??????\", \"???\", \"???\", \"???\", \"??????\", \"??????\", \"??????\",\"??????\", \"??????\", \"???\", \"??????\", \"??????\", \"??????\", \"??????\", \"??????\", \"??????\", \"??????\"];\r\n");
      out.write("            let a = firstname[Math.floor(Math.random() * (firstname.length))];\r\n");
      out.write("            let b = name[Math.floor(Math.random() * (name.length))];\r\n");
      out.write("            $('.leader').val(a+b);\r\n");
      out.write("            //?????????\r\n");
      out.write("            $('.quantity').val(Math.floor(Math.random()*100)+10);\r\n");
      out.write("            $('.price').val(Math.floor(Math.random()*1000)+100);\r\n");
      out.write("            $('.discount').val(Math.floor(Math.random()*9)+1);\r\n");
      out.write("            if($('.discount').val()<10){\r\n");
      out.write("    			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/10));\r\n");
      out.write("    			$('.spdiscount').html('');\r\n");
      out.write("    		}else if($('.discount').val()>10&&$('.discount').val()<100){\r\n");
      out.write("    			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/100));\r\n");
      out.write("    			$('.spdiscount').html('');\r\n");
      out.write("    		}else{\r\n");
      out.write("    			$('.spdiscount').html(\"<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>????????????\");\r\n");
      out.write("    		}\r\n");
      out.write("			let productname=[\"???GROUPON??????????????????/??????????????? 2???/5???\",\r\n");
      out.write("				\"????????????????????????12???:???????????? ??????????????????\",\r\n");
      out.write("				\"NIKE AF1/1 ???????????? CV1758100/DD2429001 ????????????\",\r\n");
      out.write("				\"????????? ???????????? 4D??????????????????????????? ??????????????? 4D???????????????\",\r\n");
      out.write("				\"?????????????????? ???????????? ?????? ????????? ????????????\",\r\n");
      out.write("				\"N+Y ??????????????????????????? ????????????????????????\",\r\n");
      out.write("				\"?????????????????????????????????\",\r\n");
      out.write("				\"??????????????????NOCOR????????????????????????:?????????+???????????????+???????????????\",\r\n");
      out.write("				\"???K.T.T.??? HL ???????????????MICH??????????????????????????? ????????????NIJ106.3A??????\",]\r\n");
      out.write("			$('.productname').val(productname[Math.floor(Math.random() * (productname.length))]);\r\n");
      out.write("			var y=[\"2021\",\"2022\"];\r\n");
      out.write("			var m=[\"01\",\"02\",\"03\",\"04\",\"05\",\"06\",\"07\",\"08\",\"09\",\"10\",\"11\",\"12\"];\r\n");
      out.write("			var d=[\"01\",\"02\",\"03\",\"04\",\"05\",\"06\",\"07\",\"08\",\"09\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\r\n");
      out.write("			\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\"];\r\n");
      out.write("			var yy=y[Math.floor(Math.random() * (y.length))];\r\n");
      out.write("			var mm=m[Math.floor(Math.random() * (m.length))];\r\n");
      out.write("			var dd=d[Math.floor(Math.random() * (d.length))];\r\n");
      out.write("			$('#dat').val(yy+'-'+mm+'-'+dd);\r\n");
      out.write("        })\r\n");
      out.write("            function format_float(num, pos){\r\n");
      out.write("        var size = Math.pow(10, pos);\r\n");
      out.write("        return Math.round(num * size) / size;}\r\n");
      out.write("    function preview(input) {\r\n");
      out.write("        if (input.files && input.files[0]) {\r\n");
      out.write("            var reader = new FileReader();\r\n");
      out.write("            reader.onload = function (e) {\r\n");
      out.write("                $('.preview').attr('src', e.target.result);\r\n");
      out.write("                var KB = format_float(e.total / 1024, 2);\r\n");
      out.write("                $('.size').text(\"???????????????\" + KB + \" KB\");}\r\n");
      out.write("            reader.readAsDataURL(input.files[0]);}}\r\n");
      out.write("    $(\"body\").on(\"change\", \".upl\", function (){preview(this);})\r\n");
      out.write("	})\r\n");
      out.write("	</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
