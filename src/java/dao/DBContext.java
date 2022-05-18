/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.swing.text.AbstractDocument.Content;

/**
 *
 * @author MyPC
 */
public class DBContext {
    protected String imagePath;
    public DBContext(){}
    
    protected Connection getConnection() throws Exception{
        try {
            InitialContext initial = new InitialContext();
            Object obj = initial.lookup("java:comp/env");
            Context context = (Context) obj;
            
            String serverName = context.lookup("serverName").toString();
            String portNumber = context.lookup("portNumber").toString();
            String databaseName = context.lookup("databaseName").toString();
            String url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+databaseName;
            String username = context.lookup("username").toString();
            String password = context.lookup("password").toString();
            imagePath = "images/";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public String getImagePath(){
        return imagePath;
    }

    public void closeConnection(ResultSet rs, PreparedStatement ps, Connection con) throws SQLException  {
        try {
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
            if (ps != null && !ps.isClosed()) {
                ps.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (Exception ex) {
            throw ex;
        }
    }
}
