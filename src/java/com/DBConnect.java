package com;


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author dell pc
 */
public class DBConnect {
    Connection con =null;
    public Connection getConnect()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafe1","root","29101998");
       
        
    }
        catch(Exception e)
        {
            System.out.println(e);
        }
    return con;
}
}