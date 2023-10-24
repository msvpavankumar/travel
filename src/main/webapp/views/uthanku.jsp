<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
	<meta charset="UTF-8">
	<title>ADMIN DASHBOARD</title>
    
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<style>
body {
font-family: Cambria, Helvetica, sans-serif;
margin: 100px;
background-image: url('https://media.istockphoto.com/vectors/vector-illustration-of-a-vote-measurement-of-customer-satisfaction-vector-id1249553361?k=20&m=1249553361&s=612x612&w=0&h=I6k1BjwIYMCJA1WCjcQqe07l2kV6VUMct4u6FOAff9Q=') ;
  background-repeat: no-repeat;
  background-size: 500px 700px;
  background-position : right;
}

html {
box-sizing: border-box;
}
*, *:before, *:after {
box-sizing: inherit;
}
.column {
float: center;
width: 33.3%;
margin-bottom: 16px;
padding: 0 8px;
}
.card {
box-shadow: 0 4px 8px 0 rgb(0, 255, 255);
margin: 8px;
}
.about-section {
padding: 50px;
text-align: center;

color:black;
}
.container {
padding: 0 16px;
background-color:rgb(255, 255, 128);
}
.container::after, .row::after {
content: "";
clear: both;
display: table;
}
.title {
color: grey;
}
@media screen and (max-width: 650px) {
.column {
width: 100%;
display: block;
}
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

</style>
</head>
<body>
	<nav>
		<ul>
			<li class="logo"><img alt="" src="https://media.istockphoto.com/vectors/man-avatar-icon-vector-id1257689100?k=20&m=1257689100&s=612x612&w=0&h=y9AW3ChJh7dWf0uqbGrInSQhDLXaxgNtpNXk8b1BRVE="></li>
			<br>
			<li>
				<a href="/admindashboard"><i class="fa fa-dashboard "></i> DASHBOARD</a>
			</li>
			<li>
				<a href="/products"><i class="fa fa-eye "></i> PRODUCTS</a>
			</li>
			<li>
				<a href="/cart"><i class="fa fa-trash-o "></i> JUNK DETAILS</a>
			</li>
			<li>
				<a href="/payment"><i class="fa fa-user "></i> USERS</a>
			</li>
            <li>
				<a href="/home"><i class="fa fa-sign-out "></i> LOGOUT</a>
			</li>
		</ul>
	</nav>
	<div class="about-section">
<h1><b>Product added successfully !!!</b></h1>
<P>The details of the product are stored well. </P>

</div>
<div class = "form-row">
                            <p align="center"><i class="fa fa-check-circle" style="font-size:100px;color:green"></i></p>
                        </div>
</body>
</html>
