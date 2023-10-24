<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<style>
.divider-text {
    position: relative;
    text-align: center;
    margin-top: 15px;
    margin-bottom: 15px;
}
.divider-text span {
    padding: 7px;
    font-size: 12px;
    position: relative;   
    z-index: 2;
}
.divider-text:after {
    content: "";
    position: absolute;
    width: 100%;
    border-bottom: 3px solid #ddd;
    top: 55%;
    left: 0;
    z-index: 1;
}
</style>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<body>
<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 1000px;">
	<h4 class="card-title mt-3 text-center">Register Now</h4>
	<p class="divider-text">
        <span class="bg-none"></span>
    </p>
	<form method="post" action="/submitreg" ModelAttribute="reg">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user-circle"></i> </span>
		 </div>
        <input name="fname" class="form-control" placeholder="First Name" type="text" required>
    </div> <!-- form-group// -->
<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user-circle"></i> </span>
		 </div>
        <input name="lname" class="form-control" placeholder="Last Name" type="text" required>
    </div> <!-- form-group// -->
    
    
	
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email Address" type="email" required>
    </div> <!-- form-group// -->
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		</div>
		<select class="form-control" required>
        	<option value=""> Gender</option>
			<option value="male">Male</option>
		    <option value="female">Female</option>
		    <option value="other">Other</option>
		</select>
	</div> <!-- form-group end.// -->
    
    
   
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone" required></i> </span>
		</div>
		<select class="custom-select" style="max-width: 80px;">
		    <option value="0">+91</option>
		    <option value="1">+72</option>
		    <option value="2">+18</option>
		    <option value="3">+01</option>
		</select>
    	<input name="mno" class="form-control" placeholder="Phone number" type="number" required>
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="cpswd" class="form-control" placeholder="Create Password" type="password" required>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="rpswd" class="form-control" placeholder="Repeat Password" type="password" required>
    </div> <!-- form-group// -->                                      
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Submit </button>
    </div> <!-- form-group// -->      
    <p class="text-center">Have an account? <a href="/login">Log In</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->
</body>

</html>