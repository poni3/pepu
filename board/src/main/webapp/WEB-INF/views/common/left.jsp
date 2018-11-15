<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="col-md-3 left_col">
  <div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0;">
      <a href="index" class="site_title"><i class="fa fa-paw"></i> <span>꿀85 정산</span></a>
    </div>

    <div class="clearfix"></div>

    <!-- menu profile quick info -->
    <div class="profile clearfix">
      <div class="profile_pic">
        <img src="images/img.jpg" alt="..." class="img-circle profile_img">
      </div>
      <div class="profile_info">
        <span>Welcome,</span>
        <h2>줴</h2>
      </div>
    </div>
    <!-- /menu profile quick info -->

    <br />

    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
      <div class="menu_section">
        <h3>정산메뉴</h3>
        <ul class="nav side-menu">
          <li><a><i class="fa fa-home"></i>사용자 등록<span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="userList">꿀85</a></li>
              <li><a href="oldUserList">뒷방</a></li>
              <!-- <li><a href="etcList">기타</a></li> -->
            </ul>
          </li>
          <li><a href="payoffList"><i class="fa fa-edit"></i> 정산등록 </a>
          </li>
          <li><a href="payoffmana"><i class="fa fa-desktop"></i> 정산관리 </a>          
          </li>
          
          
          <!-- todo 메뉴추가해서 정리 -->
          
          <!-- <li><a><i class="fa fa-table"></i> 작업관리 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="otorderList.do">수주관리</a></li>
              <li><a href="orderList.do">발주관리</a></li>
              <li><a href="warehousing.do">입고관리</a></li>
              <li><a href="release.do">출고관리</a></li>
            </ul>
          </li> -->
          
          
          <li><a href="estimateList.do"><i class="fa fa-bar-chart-o"></i> 정산통계 </a>            
          </li>
          <!-- <li><a><i class="fa fa-clone"></i>작업 통계 <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="wareHousing_G.do">입고 통계</a></li>
              <li><a href="release_G.do">출고 통계</a></li>
              <li><a href="changeAmount.do">단가 변동 조회</a></li>
              
            </ul>
          </li> -->
        </ul>
      </div>
      <!-- <div class="menu_section">
        <h3>Live On</h3>
        <ul class="nav side-menu">
          <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="e_commerce.html">E-commerce</a></li>
              <li><a href="projects.html">Projects</a></li>
              <li><a href="project_detail.html">Project Detail</a></li>
              <li><a href="contacts.html">Contacts</a></li>
              <li><a href="profile.html">Profile</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li><a href="page_403.html">403 Error</a></li>
              <li><a href="page_404.html">404 Error</a></li>
              <li><a href="page_500.html">500 Error</a></li>
              <li><a href="plain_page.html">Plain Page</a></li>
              <li><a href="login.html">Login Page</a></li>
              <li><a href="pricing_tables.html">Pricing Tables</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
                <li><a href="#level1_1">Level One</a>
                <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li class="sub_menu"><a href="level2.html">Level Two</a>
                    </li>
                    <li><a href="#level2_1">Level Two</a>
                    </li>
                    <li><a href="#level2_2">Level Two</a>
                    </li>
                  </ul>
                </li>
                <li><a href="#level1_2">Level One</a>
                </li>
            </ul>
          </li>                  
          <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
        </ul>
      </div> -->

    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
      <a data-toggle="tooltip" data-placement="top" title="Settings">
        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="FullScreen">
        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="Lock">
        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="Logout" href="logout.do">
        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
      </a>
    </div>
    <!-- /menu footer buttons -->
  </div>
</div>