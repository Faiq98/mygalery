/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.galery;

import java.sql.*;

/**
 *
 * @author fhfai
 */
public class DBConnection {
    
    private static String username = "root";
    private static String password = "admin";
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/galery";
            con = DriverManager.getConnection(url, username, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
