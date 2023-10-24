<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
	<meta charset="UTF-8">
	<title>USER DASHBOARD</title>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Montserrat', sans-serif;
	background: #e3e9f7;
}
nav ul {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 260px;
	position: fixed;
	top: 0;
	left: 0;
	background-color: #3A5E6D;
}
nav ul li {
	list-style: none;
}
nav ul li a {
	display: block;
	font-family: 'Montserrat', sans-serif;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 20px;
	color: #fff;
	position: relative;
	padding: 25px 0 25px 38px;
}
nav ul li a:before {
	content: '';
	position: absolute;
	top: 0px;
	right: 0px;
	width: 0%;
	height: 100%;
	background: #e3e9f7;
	border-radius: 40px 0px 0px 40px;
	z-index: -1;
	transition: all 300ms ease-in-out;
}
nav ul li a:hover {
	color: #2b2626;
}
nav ul li a:hover:before {
	width: 95%;
}
.wrapper {
	margin-left: 260px;
}
.section {
	display: grid;
	place-items: center;
	min-height: 100vh;
	text-align: center;
}
.box-area h2 {
	text-transform: uppercase;
	font-size: 50px;
}
.box-area p {
	line-height: 2;
}
.box-area {
	width: 75%;
}
.logo {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	overflow: hidden;
	margin: 25px auto;
}
.logo img {
	width: 100%;
}
.form-style-5{
	max-width: 500px;
	padding: 10px 20px;
	background: #f4f7f8;
	margin: 10px auto;
	padding: 20px;
	background: #f4f7f8;
	border-radius: 8px;
	font-family: Georgia, "Times New Roman", Times, serif;
}
.form-style-5 fieldset{
	border: none;
}
.form-style-5 legend {
	font-size: 1.4em;
	margin-bottom: 10px;
}
.form-style-5 label {
	display: block;
	margin-bottom: 8px;
}
.form-style-5 input[type="text"],
.form-style-5 input[type="date"],
.form-style-5 input[type="datetime"],
.form-style-5 input[type="email"],
.form-style-5 input[type="number"],
.form-style-5 input[type="search"],
.form-style-5 input[type="time"],
.form-style-5 input[type="url"],
.form-style-5 textarea,
.form-style-5 select {
	font-family: Georgia, "Times New Roman", Times, serif;
	background: rgba(255,255,255,.1);
	border: none;
	border-radius: 4px;
	font-size: 15px;
	margin: 0;
	outline: 0;
	padding: 10px;
	width: 100%;
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	background-color: #e8eeef;
	color:#8a97a0;
	-webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
	box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
	margin-bottom: 30px;
}
.form-style-5 input[type="text"]:focus,
.form-style-5 input[type="date"]:focus,
.form-style-5 input[type="datetime"]:focus,
.form-style-5 input[type="email"]:focus,
.form-style-5 input[type="number"]:focus,
.form-style-5 input[type="search"]:focus,
.form-style-5 input[type="time"]:focus,
.form-style-5 input[type="url"]:focus,
.form-style-5 textarea:focus,
.form-style-5 select:focus{
	background: #d2d9dd;
}
.form-style-5 select{
	-webkit-appearance: menulist-button;
	height:35px;
}
.form-style-5 .number {
	background: #1abc9c;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 4px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255,255,255,0.2);
	border-radius: 15px 15px 15px 0px;
}

.form-style-5 input[type="submit"],
.form-style-5 input[type="button"]
{
	position: relative;
	display: block;
	padding: 10px 30px 10px 30px;
	color: #FFF;
	margin: 0 auto;
	background: #1abc9c;
	font-size: 18px;
	text-align: center;
	font-style: normal;
	width: 50%;
	border: 1px solid #16a085;
	border-width: 1px 1px 3px;
    margin-top: 10px;
	margin-bottom: 10px;
}
.form-style-5 input[type="submit"]:hover,
.form-style-5 input[type="button"]:hover
{
	background: #109177;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li class="logo"><img alt="" src="https://media.istockphoto.com/vectors/man-avatar-icon-vector-id1257689100?k=20&m=1257689100&s=612x612&w=0&h=y9AW3ChJh7dWf0uqbGrInSQhDLXaxgNtpNXk8b1BRVE="></li>
			<br>
			<li>
				<a href="/checklogin"><i class="fa fa-dashboard "></i> DASHBOARD</a>
			</li>
			<li>
				<a href="/products"><i class="fa fa-eye "></i> ACTIONS</a>
			</li>
			<li>
				<a href="/cart"><i class="fa fa-user "></i> DOCTORS</a>
			</li>
			<li>
				<a href="/users"><i class="fa fa-user "></i> USERS</a>
			</li>
            <li>
				<a href="/home"><i class="fa fa-sign-out "></i> LOGOUT</a>
			</li>
		</ul>
	</nav>
	<div class="form-style-5">
<form>
<fieldset>
<legend><span class="number">1</span>Deleting Doctor</legend>
<input type="text" name="field1" placeholder="Doctor Name *">

<label for="job">Type :</label>
<select id="job" name="field4">
  <option value="">Select</option>
  <option value="Dermatologists">Dermatologists</option>
  <option value="General Surgeons">General Surgeons</option>
  <option value="Cardiologist">Cardiologist</option>
  <option value="ENT-Specialist">ENT-Specialist</option>
  <option value="Gynaecologist">Gynaecologist</option>
  <option value="Others">Others</option>
</select>       
</fieldset>

<input type="submit" value="Submit" />
</form>
</div>
</body>
</html>
