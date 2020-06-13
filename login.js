function login_validation()
{
    let uname = document.login_form.name;
    let password = document.login_form.pass;
    if(validate_name(uname))
    {
        if(validate_password(password))
        {
            return true;
        }
    }
    return false;
}

function validate_name()
{
    let length = uname.value.length;
    if(length == 0)
    {
        window.alert("Username should not be empty!");
        uname.focus();
        return false;
    }
    else
    {
        return true;
    }
}

function validate_password(password) {
    length = password.value.length;
    if (length < 6) {
        window.alert("Password must contain at least 6 characters");
        password.focus();
        return false;
    } else {
        let lowerCaseLetters = /[a-z]/g;
        if (password.value.match(lowerCaseLetters)) {
            let upperCaseLetters = /[A-Z]/g;
            if (password.value.match(upperCaseLetters)) {
                let numbers = /[0-9]/g;
                if (password.value.match(numbers)) {
                    return true;
                } else {
                    window.alert("Password must contain a lowercase,Uppercase and a number");
                    password.focus();
                    return false;
                }
            } else {
                window.alert("Password must contain a lowercase,Uppercase and a number");
                password.focus();
                return false;
            }
        } else {
            window.alert("Password must contain a lowercase,Uppercase and a number");
            password.focus();
            return false;
        }

    }
}