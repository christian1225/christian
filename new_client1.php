
<?php require_once "php/controller.php"; ?>
<!DOCTYPE html> 
<html  lang="en"> 
	<head>  
		<style> 
		.spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
		::-webkit-scrollbar { display: none; }
		.active{background-color: #1ac9f1 !important;}
		</style> 
		<meta charset="UTF-8">
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
		<title>Hospital Management System</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">  
		<link rel="shortcut icon" href="img/logo.png"> 
		<link rel="stylesheet" type="text/css" href="assets/assets-minified/admin-all-demo.css"> 
		<script type="text/javascript" src="assets/assets-minified/js-core.js"></script> 
		<script type="text/javascript">
			$(window).load(function(){
				setTimeout(function() {
					$('#loading').fadeOut( 400, "linear" );
				}, 300);
			});
		</script> 
		<style type="text/css"> 
			html,body {
				height: 100%;
				background: #fff;
				overflow: hidden;
			} 
        </style> 
    </head>
	<body>
	<div id="loading">
		<div class="spinner">
			<div class="bounce1"></div>
			<div class="bounce2"></div>
			<div class="bounce3"></div>
		</div>
	</div> 
	<script type="text/javascript" src="assets/assets/widgets/wow/wow.js"></script>
	<script type="text/javascript"> 
		wow = new WOW({
			animateClass: 'animated',
			offset: 100
		});
		wow.init();
	</script>  
	<img src="img/domain2.jpg" class="login-img wow fadeIn" alt=""> 

            
                <div id="page-content">
                    <div class="container">  
                        <div class="row">
                            <div class="col-md-9">
                                <div class="dashboard-box dashboard-box-chart bg-white content-box"> 
                                    <h3 style="padding-top:10px">Register</h3>
                                    <form action="new_client1.php?" method="post" class="form-horizontal" enctype="multipart/form-data">
                                           
                                        <div class="form-group" style="padding-top:40px">
                                            <label class="col-sm-3 control-label">Name</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="name" placeholder="Last name - First name - Middile initial" required>
                                            </div> 
                                        </div>   
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Username</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="user" placeholder="Username" required>
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Password</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" name="pass" placeholder="Password" required>
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-alt btn-hover btn-primary" name="new_client">
                                                <span>Save account</span>
                                                <i class="glyph-icon icon-arrow-right"></i>
                                            </button>  
                                        </div>  
                                    </form>  
                                <div>
                            </div>
                        </div>
                    </div> 
                </div>
    <script type="text/javascript" src="assets/assets/bootstrap/js/bootstrap.js"></script>  
</body>        
      

</html>    
