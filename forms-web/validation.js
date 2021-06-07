function validate() {
	var name = document.getElementById("name");
	var mobile = document.getElementById("mobile");
	var email = document.getElementById("email");
	var city=document.getElementById("city");
	var state=document.getElementById("state");
	var country=document.getElementById("country");

	//validation for  name not to contain num

	if (name.value == "") {
		alert("blank name");
		name.style.border = " solid 3px red";
		return false;
	}
	if (name.value != "") {
		name.style.border = " solid 3px black ";
		var user = name.value;
		for (let i = 0; i < user.length; i++) { //48,57
			if ((user.charCodeAt(i) >= 48) && (user.charCodeAt(i) <= 57)) {
				name.style.border = " solid 3px red ";
				alert("no numbers in  user name");
				return false;
			}


		}
	} else {
		// console.log(name.length); is used to find lenth of string
		name.style.border = " solid 3px black ";
	}

	// validation for mobile to contain number and length should be 10

	if ((mobile.value == "") || (mobile.value.length < 10)) {
		alert("blank mobile or digits are lesssthan 10");
		mobile.style.border = " solid 3px red";
		return false;
	}
	if ((mobile.value != "") && (mobile.value.length == 10)) {

		var mobNumber = mobile.value;
		for (let i = 0; i < mobNumber.length; i++) { //48,57 --0 to 9
			if ((mobNumber.charCodeAt(i) >= 48) && (mobNumber.charCodeAt(i) <= 57)) {
				mobile.style.border = " solid 3px black ";
				//	alert("no numbers in  user name");

			} else {
				mobile.style.border = " solid 3px red ";
				alert("no aplhabets in  mobile num");
				return false;
			}


		}
	}
	// validating email by checking symbol @  and "." position
	if ((email.value == "")) {
		alert("blank email");
		email.style.border = " solid 3px red";
		return false;
	}

	if (email.value != "") {
		email.style.border = " solid 3px black ";
		var emailid = email.value;
		var atPosition = emailid.indexOf("@");
		var dotPosition = emailid.lastIndexOf(".");
		if (atPosition < 1 || dotPosition < atPosition + 2 || dotPosition + 2 >= emailid.length) {
			alert("Please enter a valid e-mail address");
			return false;
		}
	}

	return true;

}
/*function submit() {
	var sub=document.getElementById("button")
	var val=validate();
	console.log(val);
	if(val==true){
		sub.style.visibility="visible";

	}
	else{
		sub.style.visibility="visible";


	}

}*/
