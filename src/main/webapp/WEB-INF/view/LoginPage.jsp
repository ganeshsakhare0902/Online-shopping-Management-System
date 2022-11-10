<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
<title>Insert title here</title>

<style type="text/css">	
	* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
  background-size: cover;
  font-family: sans-serif;
}
.login-wrapper {
  height: 100vh;
  width: 100vw;
  display: flex;
  justify-content: center;
  align-items: center;
}
.form {
  position: relative;
  width: 100%;
  max-width: 380px;
  padding: 80px 40px 40px;
  background: rgba(0, 0, 0, 0.7);
  border-radius: 10px;
  color: #fff;
  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
}
.form::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 50%;
  height: 100%;
  background: rgba(255, 255, 255, 0.08);
  transform: skewX(-26deg);
  transform-origin: bottom left;
  border-radius: 10px;
  pointer-events: none;
}
.form img {
  position: absolute;
  top: -50px;
  left: calc(50% - 50px);
  width: 100px;
  background: rgba(255, 255, 255, 0.8);
  border-radius: 50%;
}
.form h2 {
  text-align: center;
  letter-spacing: 1px;
  margin-bottom: 2rem;
  color: white;
}
.form .input-group {
  position: relative;
}
.form .input-group input {
  width: 100%;
  padding: 10px 0;
  font-size: 1rem;
  letter-spacing: 1px;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background-color: transparent;
  color: inherit;
}
.form .input-group label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 10px 0;
  font-size: 1rem;
  pointer-events: none;
  transition: 0.3s ease-out;
}
.form .input-group input:focus + label,
.form .input-group input:valid + label {
  transform: translateY(-18px);
  color: white;
  font-size: 0.8rem;
}
.submit-btn {
  display: block;
  margin-left: auto;
  border: none;
  outline: none;
  background: #ff652f;
  font-size: 1rem;
  text-transform: uppercase;
  letter-spacing: 1px;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
}
.forgot-pw {
  color: inherit;
}

#forgot-pw {
  position: absolute;
  display: flex;
  justify-content: center;
  align-items: center;
  top: 0;
  left: 0;
  right: 0;
  height: 0;
  z-index: 1;
  background: #fff;
  opacity: 0;
  transition: 0.6s;
}
#forgot-pw:target {
  height: 100%;
  opacity: 1;
}
.close {
  position: absolute;
  right: 1.5rem;
  top: 0.5rem;
  font-size: 2rem;
  font-weight: 900;
  text-decoration: none;
  color: inherit;
}
/* #ragist{
			
	color: white;
	text-decoration: none; 
	font-size: 20px;
	padding:10px 20px 10px 20px;
	background-color:#707B7C;
} */
#admin{
		color: white;
		text-decoration: none; 
		font-size: 20px;
		margin-left: 20px;
		background-color:#707B7C;
		padding-top:10px;
		padding-bottom: 10px;
		padding-right: 10px;
								
}
.wrap {

  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  left: -90px;
}
.wrap a{
			
			text-decoration: none;
			text-align: center;
			padding-top: 15px;
			
}

.button {
  width: 140px;
  height: 45px;
  font-family: 'Roboto', sans-serif;
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  }

.button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

.wrap2 {

  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  left: 90px;
  position: relative;
  top:-45px;
}
.wrap2 a{
			
			text-decoration: none;
			text-align: center;
			padding-top: 15px;
}

.button2 {
  width: 140px;
  height: 45px;
  font-family: 'Roboto', sans-serif;
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  }

.button2:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

</style>
</head>
<body>
		<div class="login-wrapper">
      <form action="loginP" class="form" method="get">
        <h2 value="${requestScope.log }">Login</h2>
        <div class="input-group">
          <input type="text" name="loginUser" id="loginUser" required />
          <label for="loginUser">User Name</label>
        </div>
        <div class="input-group">
          <input
            type="password"
            name="loginPassword"
            id="loginPassword"
            required
          />
          <label for="loginPassword">Password</label>
        </div>
        <input type="submit" value="Login" class="submit-btn" /><br>
        <!-- <a href="ragistrationPage" id="ragist"> Ragistration</a> -->
        
        <div class="wrap" id="ragist">
  		  		
  			<a href="ragistrationPage" class="button" id="ragist"> Ragistration</a>
  			
		</div>
		
		<div class="wrap2" id="ragist">
  		  		
  			<a href="adminLog" class="button2" id="ragist"> Admin</a>
  			
		</div>
		</form>		
</body>
</html>