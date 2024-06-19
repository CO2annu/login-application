<body>
	<form name = "f1" action = "/My/loginServlet" method = "post" onSubmit = "return validate()">
		username : <input type = "text" name = "username"/><br>
		password : <input type = "text" name  = "password"/><br>
		<input type = "submit" value = "Login"/>
	</form>
	New User <a href = "register.jsp">Register</a>
	<script>
		function validate()
		{
			var x1 = document.f1.username.value;
			if(x1 == "" || x1 == null)
			{
				alert("Username should not be empty");
				return false;
			}
			var x2 = document.f1.password.value;
			if(x2=="" || x2 == null)
			{
				alert("Password should not be empty");
				return false;
			}
			return true;
		}
	</script>
</body>