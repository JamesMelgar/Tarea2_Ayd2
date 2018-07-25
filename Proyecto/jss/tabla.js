upload_number=1;

function addFileInput() {
	var i=0;
	var tr = document.createElement("tr");
	var td1 = document.createElement("td");
	td1.setAttribute("width", "300");
	td1.setAttribute("align", "center");
	//<td widh="300" >Titulo Si - Tipo ACoach</td>			
	var nueva ="hola mundo viernes";
	var file2 = document.createElement("input");

	td1.innerHTML = "probando";
	td1.setAttribute("abbr","hola mundo");

	tr.appendChild(td1);
	document.getElementById("moreUploads").appendChild(tr);
	return upload_number++;
}