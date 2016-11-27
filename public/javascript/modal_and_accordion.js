function accordion(){
	var acc = document.getElementById("play");
	acc.classList.toggle("active");
	acc.nextElementSibling.classList.toggle("show");
}

function modal(){
	var modal = document.getElementById('myModal');
	modal.style.display = "block";
}

function modalClose(){
	var modal = document.getElementById('myModal');
	modal.style.display = "none";
}