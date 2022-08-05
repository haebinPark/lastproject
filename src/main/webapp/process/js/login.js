var id = document.querySelector('#userid');
var pw = document.querySelector('#pw');
var error = document.querySelectorAll('.error_next_box');

id.addEventListener("focusout", checkId);
pw.addEventListener("focusout", checkPw);


function checkId() {
	if (id.value === "") {
		error[0].innerHTML = "아이디를 입력해주세요.";
		error[0].style.display = "block";

	}
}

function checkPw() {
	if (pw.value === "") {
		error[1].innerHTML = "비밀번호를 입력해주세요.";
		error[1].style.display = "block";
	}
}