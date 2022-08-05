var userid1 = document.querySelector('#userid');
var email = document.querySelector('#email');
var error = document.querySelectorAll('.error_next_box');

userid1.addEventListener("focusout", checkuserid);
email.addEventListener("focusout", checkemail);

function checkuserid() {
	if (userid1.value === "") {
		error[0].innerHTML = "아이디를 입력해주세요.";
		error[0].style.display = "block";

	}
}

function checkemail() {
	if (email.value === "") {
		error[1].innerHTML = "이메일을 입력해주세요.";
		error[1].style.display = "block";
	}
}