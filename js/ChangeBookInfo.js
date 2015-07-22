function look()
{
    var div = document.getElementById("test");
    div.style.height = "40%";
    div.style.width = "30%";
    div.style.left = "10%";
    div.style.top = "10%";
    div.style.border = "1px solid #bbb";
    div.style.visibility = "visible";
}

function out()
{
    var div = document.getElementById("test");
    div.style.visibility = "hidden";
}

function checkauthor()
{
    var author = document.getElementById("author").value.trim();

    if(parseInt(author,10))
    {
        document.getElementById("forauthor").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的作者姓名(字符串)!</font>"
        return false;
    }
    else
    {
        document.getElementById("forauthor").innerHTML = null;
        return true;
    }
    
}

function checkname()
{
    var name = document.getElementById("name").value.trim();

    if (parseInt(name, 10))
    {
        document.getElementById("forname").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的书姓名(字符串)!</font>"
        return false;
    }
    else
    {
        document.getElementById("forname").innerHTML = null;
        return true;
    }
}

function checkpublishment()
{
    var name = document.getElementById("publishment").value.trim();

    if (parseInt(name, 10))
    {
        document.getElementById("forpublishment").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的出版社(字符串)!</font>"
        return false;
    }
    else
    {
        document.getElementById("forpublishment").innerHTML = null;
        return true;
    }
}

function checkdate()
{
    var date = document.getElementById("date").value.trim();
    if (date == "")
    {
        document.getElementById("fordate").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的日期(y/m/d)!</font>"
        return true;
    }
    else
    {
        document.getElementById("fordate").innerHTML = null;
        return true;
    }
}

function checkprice()
{
    var price = document.getElementById("price").value.trim();

    if (!(price * 1))
    {
        document.getElementById("forprice").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的价格(数字)!</font>"
        return false;
    }
    else
    {
        document.getElementById("forprice").innerHTML = null;
        return true;
    }
}

function checknumber()
{
    var price = document.getElementById("number").value.trim();

    if (!(price * 1))
    {
        document.getElementById("fornumber").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的ISBN(数字)!</font>"
        return false;
    }
    else
    {
        document.getElementById("fornumber").innerHTML = null;
        return true;
    }
}

function checknumberofborrow()
{
    var price = document.getElementById("numberofborrow").value.trim();

    if (!(price * 1))
    {
        document.getElementById("fornumberofborrow").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的借出数量(数字)!</font>"
        return false;
    }
    else
    {
        document.getElementById("fornumberofborrow").innerHTML = null;
        return true;
    }
}

function checkinfo()
{
    if(checkauthor() && checkdate() && checkname() && checknumber() && checkprice() && checknumber1() && checknumberofborrow())
    {
        return confirm("确定修改信息？");
    }
    else
    {
        alert("请检查您的修改信息的正确性！") 
        return false;
    }
}

function change1()
{
    document.getElementById("submit").style.opacity = 0.7;
}
function out1()
{
    document.getElementById("submit").style.opacity = 0.6;
}

function change2() {
    document.getElementById("reset").style.opacity = 0.7;
}
function out2() {
    document.getElementById("reset").style.opacity = 0.6;
}



function checknumber1() {
    var price = document.getElementById("number").value.trim();

    if (!(price * 1)) {
        document.getElementById("fornumber").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的数量(数字)!</font>"
        return false;
    }
    else {
        document.getElementById("fornumber").innerHTML = null;
        return true;
    }
}

function checkinfo1()
{
    if(checkauthor() && checkname() && checkdate() && checkprice() && checknumber())
    {
        return confirm("确定添加图书？");
    }
    else
    {
        alert("请检查你的信息的正确性！");
        return false;
    }
}