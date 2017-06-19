/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Amila Madushan
 */
public class shopping extends HttpServlet {
private store st=new store();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    static void respi(HttpServletRequest request,String msg,String attribute){
   
    
   
        String message = msg;
        request.setAttribute(attribute, message);
        
   
  
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("product_1")!=null){
        
          PrintWriter out=response.getWriter();
            
           st.setData("Microsoft 720", 1, "1", 899.0,"img/Database/product_1.jpg");
         st.addToCart();  
         shopping.respi(request,st.addToCart(),"message");
    
        
        request.getRequestDispatcher("shop.jsp").forward(request, response);
           
        } else if(request.getParameter("product_2")!=null){
             st.setData("Samsung galaxy S3", 1, "2", 799.0,"img/Database/product_2.jpg");
           st.addToCart();
           
        shopping.respi(request,st.addToCart(),"message1");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
          
        }else if(request.getParameter("product_3")!=null){
             st.setData("LG G2", 1, "3", 699.0,"img/Database/product_3.jpg");
           st.addToCart();
           //shopping.respi(request);
           shopping.respi(request,st.addToCart(),"message2");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
          // response.sendRedirect("cart.html");
        }else if(request.getParameter("product_4")!=null){
            st.setData("Xperia P", 1, "4", 599.0,"img/Database/product_4.jpg");
           st.addToCart();
          //shopping.respi(request);
          shopping.respi(request,st.addToCart(),"message3");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
        }else if(request.getParameter("product_5")!=null){
            st.setData("LG G3", 1, "5", 840.0,"img/Database/product_5.jpg");
           st.addToCart();
           //shopping.respi(request);
           shopping.respi(request,st.addToCart(),"message4");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
        }else if(request.getParameter("product_6")!=null){
            st.setData("Xperia U", 1, "6", 750.0,"img/Database/product_6.jpg");
           st.addToCart();
          //shopping.respi(request);
          shopping.respi(request,st.addToCart(),"message5");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
        }
        else if(request.getParameter("product_7")!=null){
           st.setData("Microsoft 230", 1, "7", 799.0,"img/Database/product_1.jpg");
           st.addToCart();
          //shopping.respi(request);
          shopping.respi(request,st.addToCart(),"message6");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
        }
        else if(request.getParameter("product_8")!=null){
             st.setData("Samsung galaxy S4", 1, "8", 450.0,"img/Database/product_2.jpg");
           st.addToCart();
           //shopping.respi(request);
           shopping.respi(request,st.addToCart(),"message7");
        request.getRequestDispatcher("shop.jsp").forward(request, response);
        }
        
        
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
