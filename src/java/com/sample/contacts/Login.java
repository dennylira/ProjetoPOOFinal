package com.sample.contacts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class Login {
    private String name;
    private String mail;
    private String username;
    private String password;
    
    //LOGIN:
   
    
    //CADASTRO:
        
    //Verifica se o nome de usuário já existe:
    public static boolean verifica(String username) throws Exception{
        boolean result = true;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            Connection con = DriverManager.getConnection (url, "app", "app");
            String SQL = "SELECT * FROM APP.USUARIO WHERE USERNAME = ?";
            PreparedStatement stmt = con.prepareStatement(SQL);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                result = false;
            }
        }catch(Exception ex){
            result = false;
        }   
        return result;
    }   

    //Insere um novo cadastro:
    public static void insert(String name, String mail, String username, String password) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            con = DriverManager.getConnection(url, "app", "app");        
            String SQL = "INSERT INTO APP.USUARIO VALUES(?,?,?,?)";            
            stmt = con.prepareStatement(SQL);
            stmt.setString(1, name);
            stmt.setString(2, mail);
            stmt.setString(3, username);
            stmt.setString(4, password);
            stmt.execute();
        }catch(Exception ex){
            throw ex;
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }
    
    //obtém o usuário
    public static Login getUser(String username){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            Connection con = DriverManager.getConnection
            (url, "app", "app");
            String SQL = "SELECT * FROM APP.USUARIO WHERE USERNAME = ?";
            PreparedStatement stmt = con.prepareStatement(SQL);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                Login l = new Login();
                l.setName(rs.getString("name"));
                l.setMail(rs.getString("mail"));
                l.setUsername(rs.getString("username"));
                l.setPassword(rs.getString("password"));
                return l;
            }else{return null;}
        }catch(Exception ex){
            return null;
        }
    }
    
    //Atualiza dados cadastrais:
    public static void update(String username, String name, String mail, String password) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            con = DriverManager.getConnection(url, "app", "app");
            String SQL = "UPDATE APP.USUARIO "
                    + "SET name = ?, mail = ?, password = ? "
                    + "WHERE username = ?";
            stmt = con.prepareStatement(SQL);
            stmt.setString(1, name);
            stmt.setString(2, mail);
            stmt.setString(3, password);
            stmt.setString(4, username);
            stmt.execute();
        }catch(Exception ex){
            throw ex;
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }
    
    //Apaga o cadastro:
    public static void delete(String username) throws Exception{
        Connection con = null;
        PreparedStatement stmt = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/sample";
            con = DriverManager.getConnection(url, "app", "app");
            String SQL = "DELETE FROM APP.USUARIO WHERE username = ?";
            stmt = con.prepareStatement(SQL);
            stmt.setString(1, username);
            stmt.execute();
        }catch(Exception ex){
            throw ex;
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }    
    
}