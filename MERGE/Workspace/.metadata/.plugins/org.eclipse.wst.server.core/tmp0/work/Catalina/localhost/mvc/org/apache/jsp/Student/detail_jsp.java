/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.64
 * Generated at: 2022-07-05 07:36:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import student.StudentDTO;
import student.StudentDAO;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/include/footer.jsp", Long.valueOf(1656655859545L));
    _jspx_dependants.put("/include/header.jsp", Long.valueOf(1656655940026L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("student.StudentDAO");
    _jspx_imports_classes.add("student.StudentDTO");
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>학생상세정보 페이지</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("	td, a, th {\r\n");
      out.write("	text-align: center;\r\n");
      out.write("	\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	tr, td, th {\r\n");
      out.write("	border: 0.6px solid black;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	thead {\r\n");
      out.write("	background-color: #ffffff;\r\n");
      out.write("	}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=CHROME\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>실습용 테마</title>\r\n");
      out.write("    <link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/c47106c6a7.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("    <script src=\"js/ie.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <div class=\"inner\">\r\n");
      out.write("            <h1><a href=\"#\">HANUL301</a></h1>\r\n");
      out.write("            <ul id=\"gnb\">\r\n");
      out.write("                <li><a href=\"list.st\">JDBC(학생목록조회)</a></li>\r\n");
      out.write("                <li><a href=\"#\">Mybatis(사원목록조회)</a></li>\r\n");
      out.write("                <li><a href=\"#\">JSTL사용</a></li>\r\n");
      out.write("                <li><a href=\"#\">고객관리</a></li>\r\n");
      out.write("                <li><a href=\"#\">게시판</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=\"util\">\r\n");
      out.write("                <li><a href=\"#\">로그인</a></li>\r\n");
      out.write("                <li><a href=\"#\">회원가입</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    \r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write('	');
 
	StudentDTO dto = (StudentDTO) request.getAttribute("dto");
// StudentController 에서  req.setAttribute("dto", dto) 에 담은 dto를 받는다.
// 받은 dto 안에서 각각의 데이터들을 목록에 맞게 보여질 수 있도록 
// 스크립트 태그(표현문 <%= 에 해당하는)로 
	
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	<table class=\"styled-table\">\r\n");
      out.write("		<h1 style=\"text-align: center;\">상세정보</h1>\r\n");
      out.write("		<thead>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>학생번호</td>\r\n");
      out.write("				<td><a>");
      out.print(dto.getStudent_no());
      out.write("</a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>학생이름</td>\r\n");
      out.write("				<td><a>");
      out.print(dto.getStudent_name());
      out.write("</a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>아이디</td>\r\n");
      out.write("				<td><a>");
      out.print(dto.getUser_id());
      out.write("</a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>성</td>\r\n");
      out.write("				<td><a>");
      out.print(dto.getLast_name());
      out.write("</a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>이름</td>\r\n");
      out.write("				<td><a>");
      out.print(dto.getFirst_name());
      out.write("</a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<th>요청</th>\r\n");
      out.write("				<td>\r\n");
      out.write("					<form action=\"detail.st\" method=\"get\">\r\n");
      out.write("						<input type=\"hidden\" name=\"student_no\"\r\n");
      out.write("							value=\"");
      out.print(dto.getStudent_no());
      out.write("\"> <input type=\"hidden\"\r\n");
      out.write("							name=\"user_id\" value=\"");
      out.print(dto.getUser_id());
      out.write("\"> <input\r\n");
      out.write("							type=\"submit\" value=\"detail.st로 요청\">\r\n");
      out.write("					</form>\r\n");
      out.write("				</td>\r\n");
      out.write("		</thead>\r\n");
      out.write("		<tbody>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td><a href=\"update.st?student_no=");
      out.print(dto.getStudent_no());
      out.write("&user_id=");
      out.print(dto.getUser_id());
      out.write("\" >수정하기\r\n");
      out.write("<!-- href=\"update.st?student_no=");
      out.print(dto.getStudent_no());
      out.write("&user_id=");
      out.print(dto.getUser_id());
      out.write("\"\r\n");
      out.write("update.st ▤▶ servlet으로 가는 key\r\n");
      out.write("? ▤▶ url에서 id&pw 구분짓는 \r\n");
      out.write("student_no= ▤▶ req.getParamete 가 param을 가지고 올때 구분하는 key값\r\n");
      out.print(dto.getStudent_no());
      out.write("  ▤▶ java코드로 해당 값을 넣어주자\r\n");
      out.write("&  ▤▶  \r\n");
      out.write("\r\n");
      out.write(" -->\r\n");
      out.write("				\r\n");
      out.write("				</a></td>\r\n");
      out.write("				<td><a onclick=\"deleteInfo('");
      out.print(dto.getStudent_no());
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(dto.getUser_id());
      out.write("');\" >삭제하기</a></td><!-- 메소드 방식으로 처리하는 방법이 있다. -->\r\n");
      out.write("			</tr>\r\n");
      out.write("		</tbody>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</table>\r\n");
      out.write("	<script type=\"text/javascript\">\r\n");
      out.write("	\r\n");
      out.write("		function deleteInfo(student_no, user_id) {\r\n");
      out.write("			\r\n");
      out.write("			if (confirm(\"정말 삭제하시겠습니까?\")) {\r\n");
      out.write("				location.href=\" delete.st?student_no=\"+student_no+\"&user_id=\"+user_id; \r\n");
      out.write("				\r\n");
      out.write("			} else {\r\n");
      out.write("				alert('아니오 선택');\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("				<!-- //http://localhost/mvc/delete.st?student_no=11&user_id=HAI -->\r\n");
      out.write("				");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("\r\n");
      out.write("    <footer>\r\n");
      out.write("        <div class=\"inner\">\r\n");
      out.write("            <div class=\"upper\">\r\n");
      out.write("                <h1>한울직업전문학교</h1>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"#\">Policy</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Terms</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Family Site</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Sitemap</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"lower\">\r\n");
      out.write("                <address>\r\n");
      out.write("                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas, facere.<br>\r\n");
      out.write("                    TEL : 062-111-1234 C.P : 010-1234-5678\r\n");
      out.write("                </address>\r\n");
      out.write("                <p>\r\n");
      out.write("                    2022 Hanul &copy; copyright all right reserved.\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>");
      out.write(" \r\n");
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
