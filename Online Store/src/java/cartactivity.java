/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Amila Madushan
 */
public class cartactivity extends HttpServlet {
   static List l=new ArrayList();
    public void addButtton(int s){
        Integer i=new Integer(s);
    l.add(i);
    
    
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         store st=new store();
         int count=0;
         ResultSet rs=(ResultSet) st.viewCart();
      
      
        
        if(request.getParameter("1")!=null){
         
            st.deleteEntry(1);
          
        }
         if(request.getParameter("2")!=null){
         
            st.deleteEntry(2);
      
        }
          if(request.getParameter("3")!=null){
         
            st.deleteEntry(3);
        }
           if(request.getParameter("4")!=null){
         
            st.deleteEntry(4);
        }
            if(request.getParameter("5")!=null){
         
            st.deleteEntry(5);
        }
           if(request.getParameter("6")!=null){
         
            st.deleteEntry(6);
        }
         if(request.getParameter("7")!=null){
         
            st.deleteEntry(7);
        }
          if(request.getParameter("8")!=null){
         
            st.deleteEntry(8);
        }
      if(request.getParameter("update_cart")!=null){
         if(request.getParameter("n1")!=null){
          
               int i=Integer.parseInt(request.getParameter("n1"));
           st.update("1",i, 899.00);
            
          
        }
         if(request.getParameter("n2")!=null){
                int i=Integer.parseInt(request.getParameter("n2"));
           st.update("2",i, 799.00);
      
        }
          if(request.getParameter("n3")!=null){
         
              int i=Integer.parseInt(request.getParameter("n3"));
           st.update("3",i, 600.00);
        }
           if(request.getParameter("n4")!=null){
         int i=Integer.parseInt(request.getParameter("n4"));
           st.update("4",i, 700.00);
        }
            if(request.getParameter("n5")!=null){
       int i=Integer.parseInt(request.getParameter("n5"));
           st.update("5",i, 400.00);
        }
           if(request.getParameter("n6")!=null){
           int i=Integer.parseInt(request.getParameter("n6"));
           st.update("6",i, 920.00);
        }
         if(request.getParameter("n7")!=null){
          int i=Integer.parseInt(request.getParameter("n7"));
           st.update("7",i, 400.00);
        }
          if(request.getParameter("n8")!=null){
          int i=Integer.parseInt(request.getParameter("n8"));
           st.update("8s",i, 600.00);
        }
      
      
      }
//           //addButtton(i);
//              try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//           out.print("");
//        }
        
       
         request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
