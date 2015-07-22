function checkAccount()
{
    var account = document.getElementById("account").value.trim();
    if(account.length<5 || account.length>18)
    {
        if (account.length < 5)
        {
            document.getElementById("tip").innerHTML = "<font size = 2 color = red face = 'Segoe Print'>Your account is too short!</font>"
            document.getElementById("account").focus();
        }
        if (account.length > 18)
        {
            document.getElementById("tip").innerHTML = "<font size = 2 color = red face = 'Segoe Print'>Your account is too long!</font>"
            document.getElementById("account").focus();
        }
    }
    
    else
    {
        document.getElementById("tip").innerHTML = null;
    }
}

function change()
{
    var button = document.getElementById("buttonfirst");
    
    button.style.opacity = 0.7;
}

function changeout()
{
    var button = document.getElementById("buttonfirst");

    button.style.opacity = 0.3;
}

function change1()
{
    var button = document.getElementById("left");

    button.style.opacity = 0.7;
}

function changeout1()
{
    var button = document.getElementById("left");

    button.style.opacity = 0.3;
}
function change2()
{
    var button = document.getElementById("middle");

    button.style.opacity = 0.7;
}

function changeout2()
{
    var button = document.getElementById("middle");

    button.style.opacity = 0.3;
}
function change3()
{
    var button = document.getElementById("right");

    button.style.opacity = 0.7;
}

function changeout3()
{
    var button = document.getElementById("right");

    button.style.opacity = 0.3;
}

window.onload = changeimg()
{

}

function change4() {
    var button = document.getElementById("admin");

    button.style.opacity = 0.7;
}

function changeout4() {
    var button = document.getElementById("admin");

    button.style.opacity = 0.3;
}

var pictures = new Array();
pictures.push("PictureOfLogin/50.jpg");
pictures.push("PictureOfLogin/_4.jpg");
pictures.push("PictureOfLogin/7.jpg");

setTimeout(function changeimg()
        {
            for(var i = 0;i < 3; i++)
            {
                document.getElementById("picture").style.background = url(picutres[i]);
            }
}, 1000);
