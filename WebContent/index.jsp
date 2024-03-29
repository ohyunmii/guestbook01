
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bigdata2019.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2019.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>


<%
	List<GuestbookVo> list = new GuestbookDao().findAll();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guestbook</title>
</head>
<body>
	<form action="/guestbook01/insert.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit"
					VALUE=" Confirm"></td>
			</tr>
		</table>
	</form>
	<br>

	<%
		int totalCount = list.size();
		int index = 0;
		for (GuestbookVo vo : list) {
	%>

	<table width=510 border=1>
		<tr>
			<td>[<%=totalCount - index++%>]
			</td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getRegDate()%></td>
			<td><a href="/guestbook01/deleteform.jsp?no=<%=vo.getNo()%>">Delete</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContents().replace("\n", "<br>")%></td>
		</tr>
	</table>
	<br>

	<%
		}
	%>

</body>
</html>