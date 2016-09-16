<%@ page language="java" import="java.util.*,com.rishi.entity.User" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>统计界面</h1>
    <hr>
    <p>当前用户在线人数：${userNumber }</p>
    <%
    	ArrayList<User> userList = (ArrayList<User>)request.getServletContext().getAttribute("userList");
    	if(userList != null){
			for(int i = 0;i<userList.size();i++){
				com.rishi.entity.User user = userList.get(i);
    %>
    SessionId:<%=user.getSessionIdString()%>
    IP:<%=user.getIpString() %>
    FirstTime:<%=user.getFirstTimeString() %><br />
    
    <%	
		}}   %>
  </body>
</html>
