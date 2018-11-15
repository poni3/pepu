<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>꿀85 정산 System Login </title>

    <!-- Bootstrap -->
    <link href="vendors/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>
 <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <!-- <form name="login" action="login.do"> -->
            <form name="login" action="index">
              <h1>System Login</h1>
              <div>
                <input type="text" class="form-control" name="userid" placeholder="Username"/>
                <!-- <input type="text" class="form-control" name="userid" placeholder="Username" required="required"/> -->
              </div>
              <div>
                <input type="password" class="form-control" name="userpwd" placeholder="Password"/>
                <!-- <input type="password" class="form-control" name="userpwd" placeholder="Password" required="required"/> -->
              </div>
              <div>
              	<button type="submit" class="btn btn-default submit">Log in</button>
                <!-- <a class="btn btn-default submit" href="index.do">Log in</a> -->
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br/>
                <div>
                  <h1><i class="fa fa-paw"></i> 꿀85 정산 System!</h1>
                  <p>©2018 All Rights Reserved. </p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
	</div>

  </body>
</html>
