function change1() {
    document.getElementById("submit").style.opacity = 0.7;
}
function out1() {
    document.getElementById("submit").style.opacity = 0.6;
}

function change2() {
    document.getElementById("reset").style.opacity = 0.7;
}
function out2() {
    document.getElementById("reset").style.opacity = 0.6;
}

function checkauthor() {
    var author = document.getElementById("author").value.trim();

    if ((author * 1)) {
        document.getElementById("forauthor").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的作者姓名(字符串)!</font>"
        return false;
    }
    else {
        document.getElementById("forauthor").innerHTML = null;
        return true;
    }

}

function checkname() {
    var name = document.getElementById("name").value.trim();

    if ((name * 1)) {
        document.getElementById("forname").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的书姓名(字符串)!</font>"
        return false;
    }
    else {
        document.getElementById("forname").innerHTML = null;
        return true;
    }
}

function checkpublishment() {
    var name = document.getElementById("publishment").value.trim();

    if ((name * 1)) {
        document.getElementById("forpublishment").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的出版社(字符串)!</font>"
        return false;
    }
    else {
        document.getElementById("forpublishment").innerHTML = null;
        return true;
    }
}

function checkdate() {
    var date = document.getElementById("date").value.trim();
    if (date == "") {
        document.getElementById("fordate").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的日期(y/m/d)!</font>"
        return true;
    }
    else {
        document.getElementById("fordate").innerHTML = null;
        return true;
    }
}

function checkprice() {
    var price = document.getElementById("price").value.trim();

    if (!(price * 1)) {
        document.getElementById("forprice").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的价格(数字)!</font>"
        return false;
    }
    else {
        document.getElementById("forprice").innerHTML = null;
        return true;
    }
}


function checkinfo() {
    if (checkauthor() && checkname() && checkdate() && checkprice() && checkpublishment()) {
        return confirm("确定添加图书？");
    }
    else {
        alert("请检查你的信息的正确性！");
        return false;
    }
}
