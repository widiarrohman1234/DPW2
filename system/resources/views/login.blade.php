<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="widht=device-width, initial-scale">
<!-- 	<link rel="stylesheet" type="text/css" href="css2/font-awesome.min.css"> -->
	<title>Login</title>
<style type="text/css">
/*login*/
#bg-login{
  display: flex;
  height: 100vh;
  justify-content:  center;
  align-items: center;
  background-color: #dcdcdc;
}
.log-1{
  width: 350px;
  border-radius: 15px;
  opacity: 0.8;
  background-color: #696969;
  padding: 20px;
  box-sizing: border-box;
  text-align: center;
}
.log-1 h2{
  text-align: center;
  margin-bottom: 20px;
  color: #fff;
}
.log-1 input{
  width: 300px;
  height: 30px;
  border-radius: 3px;
  border: none;
}
.input-control{
  position: relative;
  width: 100%;
  margin-bottom: 20px;
  box-sizing: border-box;
}

.btn{
  background-color: #fff;
  padding: 8px 15px;
  border: none;
  cursor: pointer;
  font-weight: bold;
  border-radius: 4px;
}

.btn button{
  color: black;
}
.btn:hover{
  background-color: #dcdcdc;
  color: black;
}	
</style>
</head>
		<body id="bg-login">
		<div class="log-1">
			<h2>Login</h2>
			<form action="" method="">
				<input type="text" name="user" placeholder="Username" class="input-control"> 
				<input type="password" name="user" placeholder="Password" class="input-control"> 
				<button type="submit" class="btn"><a href="{{ url('/')}}">Login</a></button>
			</form>
		</div>
	</body>

	</html>




