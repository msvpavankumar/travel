<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin:60px;
  width:70%;
  height:50%;
}

.about-section {

  padding: 40px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
text-align: center;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
img {
  border-radius: 50%;
  width:15%;
}
</style>
</head>
<body>
<br>

<div class="about-section">
<img alt="" src="https://media.istockphoto.com/photos/recycle-sign-made-of-green-trees-picture-id157603061?k=20&m=157603061&s=612x612&w=0&h=27-UhEQq6bjoc_4RMIuaP8G0NsjbNAbTcrLNxpA9Fog=" align="left">
  <h1>About Us</h1>
  <p style = "font-family:georgia,garamond,serif;font-size:20px;font-style:italic;text-align:center">
Our team is passionate about turing the waste into best. We are ravenous in turning the beloved mother Earth into green. We do have the mission in satisfying our hunger. We will assure you to feel the change in recycling the useless products which turns into amazing reuseable products. Our agenda is all about "REDUCE - REUSE - RECYCLE". You’ll get great words from our team members on what to do with this website.
</p>

</div>

<h2 style="text-align:center">Our Waste Busters Engaging Team</h2>
<div class="row">

  <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGAbNv13uvuGiA366Xqj-faL1Og7OHOnbo-A&usqp=CAU" alt="" style="width:100%">
      <div class="container">
        <h2>Jyothirmayi</h2>
        <p>jyothirmayi@gmail.com</p>
        <p><button class="button" onclick="document.location='/contact'">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq-BsW4YN_TVz5STEN-qfg2IEimbfP-LLVOA&usqp=CAU" alt="" style="width:90%">
      <div class="container">
        <h2>HimathaSree</h2>
        <p>himathasree@gmail.com</p>
        <p><button class="button" onclick="document.location='/contact'">Contact</button></p>
      </div>
    </div>
  </div>


  <div class="column">
    <div class="card">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFQFkQsANle1VbUg2-dGNFFCg5oZVQqEXmfQ&usqp=CAU" alt="" style="width:90%">
      <div class="container">
        <h2>Hymavathi</h2>
        <p>hymavathi@gmail.com</p>
        <p><button class="button" onclick="document.location='/contact'">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
