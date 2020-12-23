let fName = document.forms['vform']['fname'];



let fNameError = document.getElementById('f_name_error');
function Validate(){
    if(fName.value == ""){
        fName.style.border = "1px solid red";
        document.getElementById('fName').style.color = "red";
        fNameError.textContent("First name is required");
        fName.focus();
        return false;
    }
}