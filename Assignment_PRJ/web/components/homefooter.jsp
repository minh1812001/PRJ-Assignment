<%-- 
    Document   : homefooter
    Created on : Mar 6, 2022, 9:58:02 PM
    Author     : Minh-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-4">
                     <h3>menu LINKS</h3>
                     <ul class="link_menu">
                        <li><a href="/Assignment_PRJ/home">Trang chủ</a></li>
                        <li><a href="/Assignment_PRJ/product">Sản phẩm nổi bật</a></li>
                        <li><a href="/Assignment_PRJ/gallery">Bộ sưu tập</a></li>
                         <c:if test="${sessionScope.acc ==null}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Assignment_PRJ/login">Đăng nhập</a>
                                    </li>
                                </c:if>

                     </ul>
                  </div>
                  <div class=" col-md-3">
                     <h3>Ghi chú</h3>
                     <p class="many">
                        AA Farm is an trang trại mang lại nhiều trải nghiệm thú vị với một số loại thực phẩm và cuộc dã ngoại.
                        Hãy đến và trải nghiệm những thứ ở đây
                     </p>
                  </div>
                  <div class="col-lg-3 offset-mdlg-2     col-md-4 offset-md-1">
                     <h3>Liên hệ</h3>
                     <ul class="conta">
                        <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> Email: minh1812001@gmail.com</a></li>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> Phone : +84 343383101</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-10 offset-md-1">
                        <p>© 2019 All Rights Reserved. Design by <a href="https://html.design/"> Free Html Templates</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
