<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jsptest";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font color="#FF00FF"><strong>student information </strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>ID</b></td>
<td><b>Name</b></td>
<td><b>DEPT_NAME</b></td>
<td><b>ADDRESS</b></td>
<td><b>CONTACT_NO</b></td>

</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM student_info";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="yellow">

<td><%=resultSet.getString("student_id")%></td>
<td><%=resultSet.getString("student_name")%></td>
<td><%=resultSet.getString("dept_name")%></td>
<td><%=resultSet.getString("address")%></td>
<td><%=resultSet.getString("contact_no")%></td>



</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>