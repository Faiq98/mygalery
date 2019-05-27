<%-- 
    Document   : delete
    Created on : May 19, 2019, 9:31:52 PM
    Author     : fhfai
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.galery.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                Connection con = DBConnection.getConnection();
                String sql = "delete from image where id=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ps.executeUpdate();
                response.sendRedirect("allImage.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
