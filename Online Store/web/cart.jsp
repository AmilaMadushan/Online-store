<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Page - Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
 
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <table>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <h1><a href="index.html"><img src="img/logo.png"></a></h1>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                        
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                         <%
                                    
                                 double totalprice1=0.0;
                                     int c=0;
                                 Class.forName("com.mysql.jdbc.Driver");
                                 String url2="jdbc:mysql://localhost:3307/shoponline";
                                 String username2="root";
                                 String password2="123";
                                 String query2="select * from cart";
                                 Connection conn2=DriverManager.getConnection(url2,username2,password2);
                                 Statement stmt2=conn2.createStatement();
                                    ResultSet rs2=stmt2.executeQuery(query2);
                                 while(rs2.next()){
                                     double d=Double.parseDouble(rs2.getString(5));
                                     totalprice1+=d;
                                     c++;
                                 }if(totalprice1>=0){
                                 
                                 
                                 
                                 %>
                                
                                 
                               <a href="cart.jsp">Cart - <span class="cart-amunt">Rs.<%=totalprice1%>0</span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><%=c%></span></a>
                                            <%}%>
                       
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="shop.jsp">Shop page</a></li>
                        
                        <li class="active"><a href="cart.jsp">Cart</a></li>
                     
                        
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="#">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Products</h2>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$800.00</del>
                            </div>                             
                        </div>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Recent Posts</h2>
                        <ul>
                            <li><a href="#">Sony Smart TV - 2015</a></li>
                            <li><a href="#">Sony Smart TV - 2015</a></li>
                            <li><a href="#">Sony Smart TV - 2015</a></li>
                            <li><a href="#">Sony Smart TV - 2015</a></li>
                            <li><a href="#">Sony Smart TV - 2015</a></li>
                        </ul>
                    </div>
                </div>
               
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                           
                                <form action="cartactivity" method="post"> 
                                 <%
                                     int s=0;
                                 
                                     
                                 Class.forName("com.mysql.jdbc.Driver");
                                 String url="jdbc:mysql://localhost:3307/shoponline";
                                 String username="root";
                                 String password="123";
                                 String query="select * from cart";
                                 Connection conn=DriverManager.getConnection(url,username,password);
                                 Statement stmt=conn.createStatement();
                                    ResultSet rs=stmt.executeQuery(query);
                                 
                                 
                                 
                                 %>
                                   
                                <table cellspacing="0" class="shop_table cart" border="1">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">Remove</th>
                                           
                                            <th class="product-name">   Product</th>
                                             <th class="product-name">Product Name</th>
                                            <th class="product-price">Price</th>
                                             <th class="product-quantity">Quantity</th>
                                            <th class="product-quantity">Update Quantity</th>
                                            <th class="product-subtotal">Total Rs.</th>
                                        </tr>
                                    </thead>
                                   
                                   
                                    <% while(rs.next()){
                                    s=s+1;    
                                    %>
                                   
                                    <tbody>
                                            <tr class="cart_item">


                                        
                                    
                                            <td class="product-remove">
                                                <input type="submit" value="x" name="<%=rs.getString(2)%>"> 
                                            </td>

                                            <td class="product-thumbnail">
                                                <a href="single-product.html"><img width="145" height="145" alt="IMG" class="shop_thumbnail" src=<%=rs.getString(6)%>></a>
                                               
                                            </td>
                                             <td class="product-name">
                                                <a href="single-product.html" name="<%=rs.getString(3)%>"><%=rs.getString(3)%></a> 
                                            </td>
                                            <td class="product-name">
                                                <a href="single-product.html">Rs.<%=rs.getString(5)%>.00s</a> 
                                            </td>

                                            <td class="product-price">
                                                <span class="amount"><%=rs.getString(4)%></span> 
                                            </td>

                                            <td>
                                                <div>
                                                    
                                                    <input type="number" size="2" title="Qty" value=<%=rs.getString(4)%> min="0" step="1" name="n<%=rs.getString(2)%>">
                                                    
                                                </div>
                                            </td>

                                            <td class="product-subtotal">
                                                <span class="amount"><%=rs.getString(5)%>.00</span> 
                                            </td>
                                        </tr>
                                         <% } %>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="actions" colspan="6">
                                                <div class="coupon">
                                                   
                                                </div>
                                                <input type="submit" value="Update Cart" name="update_cart" class="button">
                                                
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>

                            <div class="cart-collaterals">


                         


                            <div class="cart_totals ">
                                <h2>Cart Totals</h2>

                                <table cellspacing="0">
                                    <tbody>
                              
                                        <tr class="cart-subtotal">
                                            <th>Cart total</th>
                                          
                                             <%
                                    
                                 double totalprice=0.0;
                                     
                                 Class.forName("com.mysql.jdbc.Driver");
                                 String url1="jdbc:mysql://localhost:3307/shoponline";
                                 String username1="root";
                                 String password1="123";
                                 String query1="select * from cart";
                                 Connection conn1=DriverManager.getConnection(url1,username1,password1);
                                 Statement stmt1=conn1.createStatement();
                                    ResultSet rs1=stmt1.executeQuery(query1);
                                 while(rs1.next()){
                                     double d=Double.parseDouble(rs1.getString(5));
                                     totalprice+=d;
                                     
                                 }if(totalprice>=0){
                                 
                                 
                                 
                                 %>
                                
                                 
                              
                                            <td><span class="amount">Rs<%=totalprice%>0</span></td>
                                            <%}%>
                                        </tr>

                                        <tr class="shipping">
                                            <th>Shipping and Handling</th>
                                            <td>Free Shipping</td>
                                        </tr>

                                        
                                    </tbody>
                                </table>
                            </div>


                            


                            </div>
                        </div>                        
                    </div>                    
                </div>
                
            </div>
        </div>
    </div>


    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>Online<span>Store</span></h2>
                       
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Vendor contact</a></li>
                            <li><a href="#">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Mobile Phone</a></li>
                            <li><a href="#">Home accesseries</a></li>
                            <li><a href="#">LED TV</a></li>
                            <li><a href="#">Computer</a></li>
                            <li><a href="#">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2017. All Rights Reserved.</p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
  </body>
</html>