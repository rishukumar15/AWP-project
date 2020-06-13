function formValidation(event)
{
    let user_name = document.User_registration.name;
    let uname = document.User_registration.username;
    let passw = document.User_registration.password;
    let re_passw = document.User_registration.re-password;
    let mob = document.User_registration.mob_no;
    let mail = document.User_registration.email;
    let gen = document.User_registration.gender;

    if(name_validation(user_name,1,20))
    {
        if(username_validation(uname))
        {
            if(password(passw))
            {
                if(validate_mobile(mob))
                {
                    if(validate_mail(mail))
                    {
                        return true;
                    }
                }
            }

        }
    }
    return false;
}

function name_validation(user_name,min,max)
{
    let length = user_name.value.length;
    if(length==0)
    {
        window.alert("Name should not be empty");
        user_name.focus();
        return false;
    }
    else if(length<min || length>max)
    {
        window.alert("Name should be between"+min+"to"+max+"characters");
        user_name.focus();
        return false;
    }
    else
    {
        return true;
    }
}

function username_validation(uname)
{
    let length = uname.value.length;
    if(length==0)
    {
        window.alert("User_Name should not be empty");
        uname.focus();
        return false;
    }
    else
    {
        return true;
    }
}

function password(passw)
{
    let length = passw.value.length;
    if(length<6)
    {
        window.alert("Password must contain at least 6 characters");
        passw.focus();
        return false;
    }
    else {
        let lowerCaseLetters = /[a-z]/g;
        if (passw.value.match(lowerCaseLetters)) {
            let upperCaseLetters = /[A-Z]/g;
            if (passw.value.match(upperCaseLetters)) {
                let numbers = /[0-9]/g;
                if (passw.value.match(numbers)) {
                    return true;
                } else {
                    window.prompt("Password must contain a lowercase,Uppercase and a number");
                    passw.focus();
                    return false;
                }
            } else {
                window.prompt("Password must contain a lowercase,Uppercase and a number");
                passw.focus();
                return false;
            }
        } else {
            window.prompt("Password must contain a lowercase,Uppercase and a number");
            passw.focus();
            return false;
        }


    }
}

function validate_mobile(mob)
{
    let phoneno = /^\d{10}$/;
    if(mob.value.match(phoneno))
    {
        return true;
    }
    else
    {
        window.prompt("Enter Correct phone-number");
        mob.focus();
        return false;
    }
}

function validate_mail(mail)
{
    let mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(mail.value.match(mailformat))
    {
        return true;
    }
    else
    {
        window.prompt("Enter correct email");
        mail.focus();
        return false;
    }
}


