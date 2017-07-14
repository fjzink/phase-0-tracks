console.log("Hello World!");
var header = document.getElementById("bamboozled");
header.style.color = "pink";

function addSpookyBorder(event) {
	event.target.style.border = "10px dashed red";
}

function removeSpookyBorder(event) {
	event.target.style.border = ""
}
var photo = document.getElementById("rainbow-chicken");
photo.addEventListener("mouseover", addSpookyBorder);
photo.addEventListener("mouseout", removeSpookyBorder);