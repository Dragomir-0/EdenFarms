function required()
{
var cont = document.getElementsByClassName("test");
var empt = document.forms["Login"]["test"].value;
if (cont == "")
{
alert("Please input a Value");
return false;
}
else 
{
window.location.href ="../HTML/User.html";
return true; 
}
}

