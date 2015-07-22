function checkaccount()
{
    var account = document.getElementById("account");
    if(account.value.length < 6)
    {
        document.getElementById("foraccount").innerHTML = "<font size = 1 color = red>账户最少为6位！</font>";
        return false;
    }
    if(parseInt(account.value,10))
    {
        document.getElementById("foraccount").innerHTML = "<font size = 1 color = red>账户不能以数字开头！</font>";
        return false;
    }
    else
    {
        document.getElementById("foraccount").innerHTML = null;
        return true;
    }
}

function checkinfo()
{
    if(checkaccount())
    {
        return true;
    }
    else
    {
        alert("请检查您的信息！");
        return false;
    }
}