
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Amila Madushan
 */
public class store {
    private String itemname;
    private int quantity;
    private String iid;
    private double price;
    private String img;
   public void setData(String itemname,int quantity,String iid,double Price,String img){
   
   this.itemname=itemname;
   this.quantity=quantity;
   this.iid=iid;
   this.price=Price;
  this.img=img;
   }  
     
   public String addToCart(){
       
             DbConnection dbconn=new DbConnection();
          
            ResultSet rs=null;
             Statement s =null;
       try {
           String select="select * from cart where iid='"+iid+"'";
           Connection myconnection= dbconn.getcon();
            s = myconnection.createStatement();
            rs=s.executeQuery(select);
        if(!rs.next()){
         
         
           String sqlString="INSERT INTO cart (iid,itemname,quantity,Price,img) VALUES ('"+iid+"','"+itemname+"','"+quantity+"','"+price+"','"+img+"')";
        
         Statement myStatement = myconnection.createStatement();
            myStatement.executeUpdate(sqlString);
                myStatement.close();
                myconnection.close();
            
         }
            return "Already added";     
            
       } catch (Exception ex) {
           Logger.getLogger(store.class.getName()).log(Level.SEVERE, null, ex);
       }
   return "Added To Cart";
   } 
   
   public ResultSet viewCart(){
         DbConnection dbconn=new DbConnection();
         
         ResultSet rSelect = null;
        try {
            Connection myconnection= dbconn.getcon();
            String sqlString="select * from cart";
            
            
            
           Statement s = myconnection.createStatement();
            rSelect= s.executeQuery(sqlString);
             
        } catch (Exception ex) {
            Logger.getLogger(store.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   return rSelect;
   }
   public void deleteEntry(int i){
       DbConnection dbconn=new DbConnection();
        
         ResultSet rSelect = null;
         PreparedStatement ps = null;
         Integer i1=new Integer(i);
        try {
            Connection myconnection= dbconn.getcon();
            String sqlString="delete from cart where iid=?";
            
       PreparedStatement st = myconnection.prepareStatement(sqlString);
       st.setString(1,i1.toString());
        st.executeUpdate(); 

            
       
             
        } catch (Exception ex) {
            Logger.getLogger(store.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   }
   
   public void update(String iid,int i,double j){
   int quantity=i;
   String itid=iid;
   double price=j;
  Integer qu=new Integer(quantity);
 
   DbConnection dbconn=new DbConnection();
        
         ResultSet rSelect = null;
         PreparedStatement ps = null;
         Integer i1=new Integer(i);
        try {
            Connection myconnection= dbconn.getcon();
           double newprice=quantity*price;
            Double pri=new Double(newprice);
            String sqlString="UPDATE cart SET quantity = ?, Price = ? WHERE iid = ?";
            
       PreparedStatement st = myconnection.prepareStatement(sqlString);
       st.setString(1,qu.toString());
       st.setString(2,pri.toString());
       st.setString(3,itid);
        st.executeUpdate(); 

            
       
             
        } catch (Exception ex) {
            Logger.getLogger(store.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   }
    
}
