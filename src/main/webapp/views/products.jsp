<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
	<meta charset="UTF-8">
	<title>ADMIN DASHBOARD</title>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
}

html {
	box-sizing: border-box;
	font-size: 62.5%;
	background: #d8e0fd;
}

.grid {
	display: grid;
	width: 90%;
	margin-top:50px;
	margin-left: 400px;
	margin-right: auto;
	grid-gap: 6rem;
	grid-template-columns: repeat(4, 1fr);
	align-items: start;
}

.grid-item {
	background-color: #fff;
	border-radius: 0.4rem;
	overflow: hidden;
	box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
	cursor: pointer;
	transition: 0.2s;
	height:100%;
}

.grid-item:hover {
	transform: translateY(-0.5%);
	box-shadow: 0 4rem 8rem rgba(0, 0, 0, 0.5);
}

.card-img {
	display: block;
	width: 100%;
	height: 25rem;
	object-fit: cover;
}

.card-content {
	padding: 3rem;
}

.card-header {
	font-size: 3rem;
	font-weight: 500;
	color: #0d0d0d;
	margin-bottom: 1.5rem;
}

.card-text {
	font-size: 1.6rem;
	letter-spacing: 0.1rem;
	line-height: 1.7;
	color: #3d3d3d;
	margin-bottom: 2.5rem;
}

.card-btn {
	display: block;
	width: 100%;
	padding: 1.5rem;
	font-size: 2rem;
	text-align: center;
	color: #3363ff;
	background-color: #d8e0fd;
	border: none;
	border-radius: 0.4rem;
	transition: 0.2s;
	cursor: pointer;
	letter-spacing: 0.1rem;
	height:40%;
}

.card-btn span {
	margin-left: 1rem;
	transition: 0.2s;
}

.card-btn:hover, .card-btn:active {
	background-color: #c2cffc;
}

.card-btn:hover span, .card-btn:active span {
	margin-left: 1.5rem;
}

@media only screen and (max-width: 60em) {
	body {
		padding: 3rem;
	}
	.grid {
		grid-gap: 3rem;
	}
}

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
				<a href="/products"><i class="fa fa-eye "></i> ACTIONS</a>
			</li>
			<li>
				<a href="/doctors"><i class="fa fa-user "></i> DOCTORS</a>
			</li>
			<li>
				<a href="/users"><i class="fa fa-user "></i> USERS</a>
			</li>
            <li>
				<a href="/home"><i class="fa fa-sign-out "></i> LOGOUT</a>
			</li>
		</ul>
	</nav>
<div class="grid">
		<div class="grid-item">
			<div class="card">
				<img class="card-img" src="https://media.istockphoto.com/vectors/add-to-basket-vector-id511993842?k=20&m=511993842&s=612x612&w=0&h=tTOa6uz-drJMvF853jcw2t7rznI6dUjcArtZDOUMZ4Y=" alt="candidate" />
				<div class="card-content">
					<h1 class="card-header" align="center">Add Doctors</h1><br>
					<button class="card-btn" onclick="document.location='add'" >Add <span>&raquo;</span></button>
				</div>
			</div>
		</div>
		<div class="grid-item">
			<div class="card">
				<img class="card-img" src="https://media.istockphoto.com/vectors/vector-shopping-cart-and-x-mark-icon-vector-id480105085?k=20&m=480105085&s=612x612&w=0&h=rhLpQl936IJ_it9jY8yFAjVWqBdSyMaxEjBJRTPWx2E=" alt="candidate" />
				<div class="card-content">
					<h1 class="card-header" align="center">Delete Existing Doctor</h1><br>

					<button class="card-btn" onclick="document.location='delete'" >Delete<span>&raquo;</span></button>
				</div>
			</div>
		</div>
		<div class="grid-item">
			<div class="card">
				<img class="card-img" src="https://media.istockphoto.com/vectors/social-distance-people-keep-distance-away-in-public-to-protect-flu-vector-id1215074967?k=20&m=1215074967&s=612x612&w=0&h=_M0NsFsHIlyQkxgj7h1p9ZnGmo9R5-ixqvyVtmD7Nks=" alt="candidate" />
				<div class="card-content">
					<h1 class="card-header" align="center">Modify Existing Doctor</h1><br>
					<button class="card-btn" onclick="document.location='modify'" >Modify<span>&raquo;</span></button>
				</div>
			</div>
		</div>
</div>
</body>
</html>
