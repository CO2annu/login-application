<body>
	<h3>Registration Page</h3>
	<form name = "f2" action = "/My/registerServlet"  method = "post" onSubmit = "return validate()">
		Name <input type = "text" name = "name"/><br>
		username <input type = "text" name = "username"/><br>
		password <input type = "password" name = "password"/><br>
		Retype password <input type = "password" name = "repassword"/><br>
		<input type = "submit" value = "Registor"/>
    </form>
    <script>
    	var x1 = document.f2.name.value;
    	var x2 = document.f2.username.value;
    	var x3 = document.f2.password.value;
    	var x4 = document.f2.repassword.value;
    	if(x1 == "" || x1 == null)
		{
			alert("name should not be empty");
			return false;
		}
		if(x2=="" || x2 == null)
		{
			alert("username should not be empty");
			return false;
		}
		if(x3 == "" || x3 = "")
		{
			alert("password should not be empty");
			return false;
		}
		if(x3!=x4)
		{
			alert("password and retypepassword should match");
			return false;
		}
    </script>
</body>