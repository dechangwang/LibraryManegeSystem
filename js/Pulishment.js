function checkreader() {
    var reader = document.getElementById("reader").value.trim();

    if (!(reader * 1)) {
        document.getElementById("forreader").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的读者编号(数字)!</font>"
        return false;
    }
    else {
        document.getElementById("forreader").innerHTML = null;
        return true;
    }

}

function checkcash() {
    var cash = document.getElementById("cash").value.trim();

    if (!(cash * 1)) {
        document.getElementById("forcash").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的金额(数字)!</font>"
        return false;
    }
    else {
        document.getElementById("forcash").innerHTML = null;
        return true;
    }

}

function checktime() {
    var date = document.getElementById("time").value.trim();
    //alert(typeof date);
    if (date == "") {
        document.getElementById("fortime").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确的日期(y/m/d)!</font>"
        return false;
    }
    else {
        document.getElementById("fortime").innerHTML = null;
        return true;
    }

}

function checkbook() {
    var book = document.getElementById("book").value.trim();

    if (!(book * 1)) {
        document.getElementById("forbook").innerHTML = "<font size = 1 color = red face = 'Segoe Print'>请输入正确图书编号(数字)!</font>"
        return false;
    }
    else {
        document.getElementById("forbook").innerHTML = null;
        return true;
    }

}


function checkinfo ()
{
    if(checkbook() && checkcash() && checktime() && checkreader())
    {
        return confirm("确定添加罚款信息？");
    }
    else
    {
        alert("请确认你所填写的信息的正确性！");
        return false;
    }
}

function change1() {
    document.getElementById("button").style.opacity = 0.9;
}
function out1() {
    document.getElementById("button").style.opacity = 0.6;
}

function change2() {
    document.getElementById("reset").style.opacity = 0.9;
}
function out2() {
    document.getElementById("reset").style.opacity = 0.6;
}