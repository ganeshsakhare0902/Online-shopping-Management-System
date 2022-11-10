<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Home Page </title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
	<style type="text/css">
			
			
			body{
				
				padding:0px;
				margin: 0px;
			
			}
			
			#header{
					
							
							background-color:#454545;
							color:white;
							display: flex;
							margin-left:5px;
							margin-right:5px;							
																
			}
			#header #head1{
			
					position: relative;		
					right: 120px;
					
			
			}
			#header #head1 ul li
			{
					position: relative;
					left: -50px;
			
			}
			#header #head2{
					position: relative;
					left:0px;
											
			}
			#header #head2 a{
			
					text-decoration: none;
					color: white
			}
			#header #head2 ul li{
					position: relative;
					left:250px;
													
			}			
			#header div{
					
					flex: 1;
					margin-left: 100px;	
					margin-top: 10px;																					
			}			
			#header div ul{
										
					list-style-type: none;
					padding-left: 50px;
					
								
			}
			#header div ul li{
			
					display:inline-block;
					padding-left: 40px;
					
			}	
			
			#head{							
					
					padding-top:10px;
					background-color: 	#022C52;					
					height: 150px;
					color: white;					
					margin-left:5px;
					margin-right:5px;
			
			}
			#head a{
						text-decoration: none;
						color: white;
					
			}
			#head h2{
						
						font-size: 30px;
						color: white;
						margin-left: 20px;
			
			}
			#head select{
							
							padding: 10px 30px 10px 30px;
							position: absolute;
							left:600px;
							top:120px;		
							border-radius: 15px 0px 0px 15px;		
							 
			}
			#head input{
							
							width:300px;
							height:32px;
							position: absolute;
							left:709px;
							top:120px;	
							
			
			}
			#head button{
							
						padding: 10px 30px 8px 30px;
						position: absolute;
						left:1016px;
						top:120px;	
						background-color:#1d63ba;
						color:white;						
						border-radius: 0px 15px 15px 0px;
			
			}
			#head #l1{
						position: absolute;
						left:1300px;
						top:120px;	
			}
			#head #p1{
						
						position: absolute;
						left:1300px;	
						top:120px;			
			}
			#head #p2{
						position: absolute;
						left:1450px;
						top:120px;	
			}
			#head #l2{
						position: absolute;
						left:1450px;
						top:120px;	
			}
			#menu{
				
					background-color: #f69e31;					
					padding-top:10px;					
					height: 50px;
					border-top: 5px solid red;	
					margin-left:5px;
					margin-right:5px;					
			}
			#menu ul{
									
					list-style-type: none;
			
			}
			#menu ul li{
						
						display: inline-block;
						padding-left: 50px;
											
			}
			#show{
						margin-left:5px;
						margin-right:10px;
						width:1510px;
						height:200px;
						background-color: cyan;
						margin-top: 1px;
						background-image: url("https://m.media-amazon.com/images/I/61c2Py7xhVL._SX3000_.jpg");
						background-size: cover;											
			}
			#data{
					margin-top: 20px;
					margin-left: 10px;
					margin-right: 10px;						
			}
			#header #head1 .fa{
				color:red;
		}	
		#header #head2 .fa{
				color:red;
		}	
		#head fa{
		
				width:20px;
		}
	</style>
</head>
<body>

	
	<section id="header">
			
			<div id="head1"> 
			
				<ul>
						<li> <i class="fa fa-phone" aria-hidden="true"></i>    Contact</li>
						<li> <i class="fa fa-envelope" aria-hidden="true"></i>  Email</li>
						<li><i class="fa fa-map-marker" aria-hidden="true"></i>  Location</li>				
				</ul>
			
			</div>
			<div id="head2">
										<%
											String email=(String)session.getAttribute("email");		
																														
										%>																																					
										
					<ul>
						<li ><a href="logout/${email }">Logout</a></li>
						<li><i class="fa fa-inr" aria-hidden="true"></i> INR</li>
						<li><i class="fa fa-user-circle" aria-hidden="true"></i> <a href="profile/${email}"> My Account</a></li>										
					</ul>							
			
			</div>							
	</section>					
	<section id="head">
		
							<h2> Online Shopping </h2>
							<select>
										<option> Hw</option>
										<option> H3e</option>
							</select>
							<input type="text" placeholder="Search here">
							<button> Search</button>
							<label id="l1"><i class="fa fa-github-alt" aria-hidden="true"></i></label>
							<p id="p1"> Github</p>
							
							<label id="l2"><a href="showSaveProductToUser/${email }"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> </a></label>
							<p id="p2"> Card</p>
							
			
		</section>
		
		<section id="menu">
						
						<ul>							
							<li>Home </li>
							<li>Electronic </li>
							<li>Ladies wear </li>
							<li>Mean Wear </li>
							<li>Kind wear </li>
							<li>Furnitures </li>
							<li>Home Appliances </li>
							<li>Electronic gadgets </li>
						
						</ul>				
		</section>
		
		<div id="show">
					
					<!-- Image  Has display here -->														
		</div>			
		
		<section id="data">
		
				 <%@include file="SavesPage.jsp"%> 
		
		</section>														
</body>
</html>