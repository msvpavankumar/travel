 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>ThankYou</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
    	*{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}
body{
    font-family: 'Cambria', sans-serif;
}
.banner{
    min-height: 100vh;
    background: url("https://media.istockphoto.com/vectors/green-spring-nature-background-with-leaves-vector-id1159995256?k=20&m=1159995256&s=612x612&w=0&h=r-Y-ytV00pKUiXXvKeHAcdu33cNlHg7eqC3mbRWgRNA=") center/cover no-repeat;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #fff;
    padding-bottom: 20px;
}
.card-container{
    display: grid;
    grid-template-columns: 400px 500px;
    border: 5px dashed #1F6918;
    border-radius: 6px;
}
.card-img{
    background: url("https://media.istockphoto.com/photos/parent-guardian-children-hands-holding-together-recycled-green-leaf-picture-id957669182?k=20&m=957669182&s=612x612&w=0&h=Gm7fQDeh9Vx9IMioXOoy1CghbmUaT4vcnRqZEHHvJiM=") center/cover no-repeat;
}
.banner h1{
    padding-bottom: 40px;
    margin-bottom: 20px;
    font-size: 40px;
    font-weight: 600;
    color:black
}
.card-content{
    background: #fff;
    height: auto;
}
.card-content h2{
    text-align: center;
    color: #000;
    padding: 25px 0 10px 0;
    font-size: 40px;
    font-weight: 700;
}
.form-row{
    display: flex;
    width: 90%;
    margin: 0 auto;
}
form select, form input,p{
	color : black;
    display: block;
    width: 100%;
    margin: 15px 12px;
    padding: 5px;
    font-size: 15px;
    font-family: 'Poppins', sans-serif;
    outline: none;
    border: none;
    font-weight: 500;
}
form input[type = text], form input[type = number], form input::placeholder,select{
    color: #000;
}
form input[type = submit]{
    color: #fff;
    background: #a73737;
    padding: 12px 0;
    border-radius: 40px;
    cursor: pointer;
    border : none
}
form input[type = submit]:hover{
    opacity: 0.9;
}
@media(max-width: 992px){
    .card-container{
        grid-template-columns: 100%;
        width: 100vw;
    }
    .card-img{
        height: 330px;
    }
}
    </style>

    <body>
        
        <section class = "banner">
            
            <div class = "card-container">
                <div class = "card-img">
                    <!-- image here -->
                </div>
                <div class = "card-content">
                    <h2>THANK YOU !!!</h2>
                    <form>
						<div class = "form-row">
                            <p align="center"><i class="fa fa-check-circle" style="font-size:100px;color:green"></i></p>
                        </div>
                        <div class = "form-row">
              				<p align="center">Thanks a bunch for visiting our Website. </p>
                        </div>
                        <div class = "form-row">
                            <input type = "submit" value = "Go Home">
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
    </body>
</html>
