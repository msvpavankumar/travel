<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
	<meta charset="UTF-8">
	<title>TRAVEL</title>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<style>
.column {
  float: right;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
body {
	margin: 0;
	padding: 0;
	font-family: 'Montserrat', sans-serif;
	background: #fffff;
}
nav ul {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 260px;
	position: fixed;
	top: 0;
	left: 0;
	background-color: #545b63;
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
			<li class="logo"><img alt="" src="data:image/jpg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHsApAMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAIHAf/EADgQAAEDAwMCBAQEBQQDAQAAAAECAwQABRESITFBUQYTImEUMnGBQpGhsSNSYsHRFSSC8DND4Qf/xAAaAQACAwEBAAAAAAAAAAAAAAADBAECBQYA/8QAJBEAAwACAgIDAAIDAAAAAAAAAAECAxESIQQxE0FRIrEjwfD/2gAMAwEAAhEDEQA/AHTdGNc0CyaPYp8y5QwjqxR7ZzS9gUxjoJxQ6GYRMgVIE1uhs1KGvah7QVQyDTXmDRBRg4rUp3qUytSDqFakUFZDL8yezOWhTjb50JTk4Qdwcnp7dKYlFWTAsGUKhWmi1J/XiolJq6A0tgDiaFdTTVbCyflOO9DmKXCQOQKIrSF7wN/QmdFBu0zkNKSSNJ2ydgTStaScrUBlXGO1HmjPyYetsFdOM0G6aLe60C6aOhGsegV04odSsGpnVUG4avsmZJPMrKF11lRzC/Cy7R98Uzj0ujjimkdNZ7R0Eh8ccUB4nXcW2EmK2pURKMuBpKitxWdkDHAPf3ppGTxTWKMHPtSfkx8kcR/A9PYB4NkKl2tXmAJcQ6UltIICOwGQDj3qw+VtxWMjfV170vvlwfYm2q3wVtJfmSPWpZ+VlIKlkDqTgJH1J6UKE5lJvYamt7RJdnUwohlOEBLahn6E4/vW0R1qdCakRsqQ6MpNS3htD1qloWnUgsryPsaqFpvQhS0xkMFqIFkK2xg8bf53FVd8a7J4cpGVxUqBdVOMhJdfjE6FdVIIAP6gfeovDtwduYkhx1paWVIGpsYO6QRkZP7/ANqP8RQFSjCkshRVGkIUfXgaDsonvgHNQPKbggS0ICPMcGrQn5wT1/z70wmI2tPsOUiolN1tb5rc5yQ2gDLBAUQc87j9MfnUji2g046FpUlsEqKVA4xuatyK8d+iAEt5wc5qNpYbVhDfqxnNeh9pcYSN0tnbKhuN8fvQN8nItsMuhZLixhAAyfrU7nRaVW9FavMuHe7lGt7UoNrSpxa2kagsJTtyOM/3NSyE4NGQ7f8ADMl51CfjHhl5z8R7Jz2HFDy0FbbjeoJ8xJTrKclH9QHX86NLeOHWtsR8hzktSnpCmQOaXvbZpvOjmPhJcSvoFBWc+/3pPI605jyK5VL0Z14tVoBePNBuqoh5XWgXF71NV0XjBp9mpXvWVCVb1lC2MfGdGjjimkalcfpTSN0obGZY1jcCmkY4pVGPFMmTgb0taHsdAEHxMsXObb7jBcjvxzqRg6kuNE4SoHHXB4zjBzjqrg2+Xe/HSbnNBTDgtBxhSFZS4o5CcHsPUT7471T77cbn4j8Q3GPZ2HZTTaQhCmd/LQnO+f6jnHfPG203h2/uW4JAdcSvcLaUQErPUpOcpV3543FKvew3L9OwvFvyl+coBvSdZJwAOua5rGmIUzJjxXmZDQcLfnI9RJHChjnIAP1zW11cbu9mluQX3ZD3mpXJjuqAU6AnAQUjc6djjBBxtncVHCtqIEaO/BcMtU/d14KwlR20qH8oBIAHO5zjApbNT/DQxxjjB8tV960P13mMuyGHOL7bmjZSMZVg5we2w3z0olUpD8RCVlJynB9s1VJl1unh64KZ/htOyUDQkEKHP77Uqav5hwX35bjSX3FlLSN8JCcp47ZyeetE8bNznRmeTP8Ak1P2dDgNrtvhmXITI891SnXvMSgJIJJ0p98DSM+1VC3XiUyh+GkaxKWtawNLRVqIBwSed+OudqVWe+XRFouzDrynn3GQthlWAVkrTvjbAwFDnGw7068GWKU5cXXLtDbS2ygLQ08dRCyolKsH5flz9fpVqvYTFpTpm0q8SW4ghrjTUhIPpShLvOeSk4O+cZ/lPTnW1Sf9Z8SuJlOnyoiUlIc2LjmNhg9tz33FM/E/hWx3FCHZKZMZ1hBCVxV4GNiRpO2PSKqdqat1punxL928uPEdUHC+dSl4I0gJAzq5GKia00y2Z7jSOgSGNlGkstGM1A54tg274o3GWp9BVrZLQCtaST8uD0GPy5NVSV41lXB12PEhojupWUgeZqUQT6T9x2zWhHkJGVfiVfaGtxfZjJ1PuJQCTjJ3NI3y7NbUChTTKsjJ+ZQ9u1MrdZlOOJeuRLrxOoIVuEH/ADVkk+HlIZGs4dWnVo08DuT0q1Zvu+kexYF6x9v9OeOIDTYQCdup5NL3V709vUYxnFpUMEHGKrj6t6ZjTnoqoafZhVvXlDFzesqNF+J1SMrimkc8UojkbU0jmopAJY2jHipJkJdwLTK3yiEQr4hpGxe6BOrkDnOOeKHjq4pmwrilqQ1FG1is9vsrC2LXGDDa1a1DUpRJ+pJNIPGHh2JdrlHZixfJnPKLjkppI9ScEHUNgfwnJPt3q1NqASfpS9x+cgLwp5K8nHoyPwgfufypa+vQ3K5I59ZvD8+Dcl/FpDDsRQDSnUfw3ic4wSMDptzQF9mT7etSHY70QnTriL9TZKdgtpY4Pt+p6X2R4m+HkfDzUB5LhwUqQAcEqxsdjskfnVYvUsXa4IahNvuW5k5DaD5YzscDIxtkc5qVllS5qd7CzLW5b/i/afpr/vtC24XB29LttxLK/PbStDmsacHKfVv9+M81CIEq4rcExSFtOBCUtBJ9AB51bHkk5x2G+NzY7Mjy9LzISsAKUQrIzjfpRcFQaOCFOE76QnOnJ5PbrzmsrGpxJylr3/Y18GPSfs1bsKIkhuQ8/h1sgo1Y7g4BOBjIGdt8U5lxLX4juYmwro/ZvEAQGytKzodA4GDgLH0Oe+aW3FTAS5FkNkpeSFtuoHqZcG5BPbnfg4pUuQAXg6gLKGwFYT85xk87Dp1osc1S++g2XHiWPa6HU2H/APo8FzSG7XdmBwsYQs/UekfvVb8UeF7hapD9ykxcQZmhUl9Kslp1XOpOfSMkbjv9KJUm7pDxg3u7RwspLSGpRLYGBkEKzj/jjrzXtiukhqPd7XcHHJzT7TrKvPcKlL1DIJJ+p5Odvaiu10K5MdQtsH8NXGzWe2PIk25D11SShPmerUN8HfYDHb3ph4b8NNRvKuUraYgK8tls4DSFDYKHU4J5446VU7C/Dk3ZhF6kmCuK6lWQkq1rBB0n2BHPYDvXSY623Zsl6NIaejvfxErbOQTkg/qFdaYx1/JCfkJqXxIFuBt3enD3iFhyO2HhjRuoYzrP16Dmq9cVaSTSKVIWM709WFZPZnYPIeJtIj8TTRJkOu7ZWsqP3OaqMldM5zpUTmkkle9NRPFaCz/J7IS5vWUMpe5rKkY4HXY68YprHc4pKwvemUZfFVpGRNDyMvimbBzSSMr706aaeQMraWkA4JIpe+hvG2wrXoGcgfU0K9c5WlS4yW1NpVpKkqKiNu2M80SkBScGvHYTJb8x6UtlpG5wUpHOecbf/KUyp/Q7ha32V26wk3ZaXpqUrkaNLaz6MHb3436dOhpJDmJtjM0uRQpSEB9ChulQHpUR+afyo6+zIzUjy4T764wScrTq1a99xgpJHTG1V5tSZl0DraHG2iSysuoAyHAR1Uo4zv0xgUnaTXbHI0rTa6LHqbK3xKcKXArGpA+bB36fTtUljIbMhLjB1elbRIGxzhWMn3z9qqsS4vFtSiXA7qwvONj1z/iibrfnJGhstqS04lJysZCgMfL2GaRmOFNv7Hfjqm3HaXsdzbhbmbkVOeWsLSCssnWErHO/bGKrUq5sqfcJaJAUSQEk+9GXZxh63pkNRUR1Fwown8W3PA/TNJbi4mJbmXko1vrUnUEPpUAMZPp52PerTifJ1IXDU1pUvYU24Q4XHnfKSCMLO+PYD9PqRSyamUzNYlDCEyAEgE76hlQyPpn9K3XMgqjFT61F/CtOVcHfFb2dxPiCelx4BiDCysFLmohWnCRqwNR9scUSU3IHy3zlrZZ7FZFKi/FiRcWg+S6tLkRt5gq64GNWOm/ap7IpDFrij/bJQWkYMcFLZKlOY0g9Dn9aeWuSo2MJZdbkJQ2cBCtGkYJGoqxj+1Irawn/AEmE2ppDaW2GleWhzzEpISFYCsnUPXznemcLb4/oha1ifL8Ibormq1MXzTu5v6QUpAAHTFVua8DnIFbuNdHPp7sVy180mlL3NMpas50nPtSSSuimjhkgK96yhys5rKrsd4nYGV0yjrpIwumMdz3qWc2mP4q+N6u1smmZDAUoecAQevHWufRneKsVluCIrbqTkKXjSrGftSmfHuR7xcvGu/QX4hmO21lL7LaVFRSF6s4RnYHHXfA+9U6VMkzVa33VLxwCdk/QDYf99s3eYwi6W9xt1YCnGzgBPAz+9LIPh2AhzzJOuUQfSHD6B/xGx++aRuKpmnFxK9FNkv8AlQ35SGlOtM4C1oA0pJ4BPGeBgZPtQFmmyLmh6S6hluMXCyEhYOTjUNzyonA43yferd42sAXHEmE42y2pQbWheyGirIDicfLjO4O305pREVCgs/6O1HWzEYPrCjhxxY5cWR9M4HAA4BAKubG6lyNY6WttFbur8dm7T163Utqy60A0cuKPQZxsVZ34qK4yIUOMvzbgyt3SC0gOFRI26dBjofrTS8xUOxQzKDLjTRwhSkkEA74Cvua88N+FWHYqx8Q2yMZQERznHupXNA+NVrsPHkUk0kVhXiiWAhTMdx8I+X+CAke+dqIWBcVOTbhdorCTu4hjZSDttg7545HUd6aXTw0CstsR59yUE4LhUUoPXnHfP5dsYqSrRIVeG4bMdpT621BTbKivG2U5V13A2oqxx9FMmbI51voaW+BHfddkKiPOQxjQtzdWR2HG9O2R8U21NcjPNRW28tt4BGgH5tqYeGm482xOsJSG5ASFpznIUk7/AE3q1Wu0tPJjTTpajIbSI7TSttPY5HYDPvUZMdtLiByVCfYostsdloaL7VsmRHQVuJfaCwhB7HpmpNaI7z0VhOiOwlCGUJ4CQkJG/wBEp/I05cRCgxH4sSO2006oqWlIxkn9qQ3KVH8vSgeVhONtwcft/wB+1/EweRGRO1tf0LeZnxVicw9f7E90XryQfV+9Vuavmmsh8nJ71X5rm5rooWjGwrbF8lfO9KZa9YOPmHajpK8hX0pQ8vC9qua+GeiHUrjJrK8PNZSzrsYOrMOUey5xSVpe9HMuUwjl2PY7vFNI72PrVdYd4piw9Q7CY97LXGnOBtKQvACdIxW0h98MpXFb1v6gkArwkZIyT7AUkjv7DemMd7I5pDNCpNGjjf6PWXA8xofRkKGlaFbg9/tVS8QWBtlxlLZd8lasR/K3dbI9Xl/1IwDjnTz0BD9p/pmptafMD4SFOoSQjJ78j74FLVL0PY8nE59cnBMivKZioFuiMFxDaeABtlR752989hV18M2+Q3Y7a98SWXnGEreQpGoerf07jBwffpUX+mMCyu29ag4ZSwuS4f8A2KJGo/kMD7U0MsDjAA2GKFOKt7YWvI36BJ1hM91XxtzkljVkNMgI27EnP6Yry0eHrPYzqt8UBzOrzHFa1Z75O+emeakcnAdaGXOHejLDsBfkIpF0iCzeNHVNp/20pfxCB+EhX/kT9lZP/IVZbRL025TQIIYfcaBHGAdv0NC+IWmbpF0KIS60rU0s/hPX7GlUd8W+GGSsLJOVnPJ701GPaFcuda9jK4zMA71WJ0krUd6lmzUrzhX2NJ5EhA/EKbidGa27o0kPaQVE8UhlvZyaJmSdWe3ak8l3miyh/BiI1q1B4/yNKP7D9zSpZyaPcV5cBajy+sISP6U7k/npH2NLiaHkvRpStI2CFqGUoUR3ArKjz3r2leRY6MhWKKac96AFTIO9Ot6OameXsasu8Ucy970naJ2oxkmhN7GFOh2w/wAb0exJx1pC0TtvRrJPehUgirRYG5Wcb0QJWBzSRonvUq1HTzQnKCq2Huz8daHXcNj6qUSFK70K4pWk70ScaA1kYzfueD81Bu3T+r9aTPqVk70KtR70ecaF3dNjVy5+rnmlkiWok5NCuKPeh5JOAc0RSkTM7fZ6/J53pbIkc71jyjvvS+Qo96sO48aNJD+x3pa896tycZ3xUkhRHBoFR3qKekP45SN5T5fcBxpQkBKE/wAqR/386H5r0150pK62wpmD2rK8CiOCaygEn//Z"></li>
			
			<li>
				<a href="/userdashboard"><i class="fa fa-dashboard "></i> HOME</a>
			</li>
			<li>
				<a href="/express"><i class="fa fa-upload "></i> CUSTOMER DETAILS</a>
			</li>
			<li>
				<a href="/viewproducts"><i class="fa fa-eye "></i> PACKAGES</a>
			</li>
			<li>
				<a href="/cart"><i class="fa fa-shopping-cart "></i> SERVICES</a>
			</li>
			<li>
				<a href="/payment"><i class="fa fa-credit-card "></i> PAYMENT</a>
			</li>
			<li>
				<a href="/home"><i class="fa fa-sign-out "></i> LOGOUT</a>
			</li>
		</ul>
	</nav>

<html>
<head>

<title>FLIGHT</title>
  <style type="text/css">
      
      h1{
          font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:black;
text-align: center; text-decoration: underline 
      }
      
table{
    font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
 background-color: whitesmoke; border-collapse: collapse; border: 2px solid navy
}
table.inner{border: 0px}
</style>
</head>

<body background="travel-pic.jpg">
    
             <h1>WELCOME TO <span>FLIGHT SEARCH</span></h1>
	  
  
     
    
<form name="form1" method="post" action="Flight">

    
<table align="center" cellpadding = "10">
 
    
        
        <tr> <td>From</td>
            <td> <input type="text" name="textarea2" required="required"> </td>
 
        </tr>
        
        <tr> <td>Destination</td>
            
            <td> <input type="text" name="textarea3" required="required"></td>
            
        </tr>
  
  
  
        <tr>
            <td>   <input type="radio" name="RadioGroup1" value="1" required="required"> </td>
            <td>  Round trip</td>
        </tr>
        
        <tr><td>    <input type="radio" name="RadioGroup1" value="2" required="required"></td>
            <td>one way </td>
        </tr>
      
        <tr><td>Departure:</td> <td><input type="text" name="date1" required="required">(MM/DD/YYYY)</td>
        </tr>
        
        <tr><td>Return Date:</td> <td><input type="text" name="date2" required="required">(MM/DD/YYYY)</td>
        </tr>
        
        <tr><td>Number of passengers</td>
            <td> <input type="text" name="textarea4" required="required"></td>
        </tr>
  
  
    
        <tr><td> 
                <a href="Welcome.jsp">
                    <input type="button" value="Go-back" name="Logout"></a>
            </td> 
            
            <td> 
                
                <input type="submit" name="Submit" value="Search"> 
</td>
</tr>    
    </table> 

</form>
  
</html>