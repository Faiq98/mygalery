<%-- 
    Document   : getImage
    Created on : May 19, 2019, 11:20:07 AM
    Author     : fhfai
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page import="com.galery.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get Image</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            try{
                Connection con = DBConnection.getConnection();
                String sql = "select * from image where id=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                    Blob blob = rs.getBlob("img");
                    byte byteArray[] = blob.getBytes(1, (int)blob.length());
                    OutputStream os = response.getOutputStream();
                    os.write(byteArray);
                    os.flush();
                    os.close();
                }else{
                    System.out.println("No image found with this id.");
                }
            }catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
