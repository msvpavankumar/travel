<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
font-family: Cambria, Helvetica, sans-serif;
margin: 0;
}
body {
  background-image: url('https://media.istockphoto.com/vectors/system-error-concept-vector-id1279275963?k=20&m=1279275963&s=612x612&w=0&h=mtWhTUZy0-hGdggXT9RKguFd9xoH9aRnQ1n7ILlAx1w=') ;
  background-repeat: no-repeat;
  background-size: 500px 700px;
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

</style>
</head>
<body>
<div class="about-section">
<h1><b>OOPS !!! Something Went Wrong.</b></h1>
<P>User Not Found. </P>
<P>The Email or Password you entered is incorrect, please try again. </P>

</div>
<div class="row" align="center">
<div class="column" >
<div class="card" align="center">
<div class="container" align="justify">
<p align="center"><a href="/login" class="fa fa-sign-in"></a> Sign-in </p>
<p align="center"><a href="/register" class="fa fa-sign-out"></a> Sign-up </p>

</div>
</div>
</div>
</div>
</body>
</html>