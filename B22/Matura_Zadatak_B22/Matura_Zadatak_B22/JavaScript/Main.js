function Sort() {
    var table = document.getElementById("Tabela");
    var rows = table.rows;
    for (var i = 1 ; i < (rows.length - 1) ; i++)
        for (var j = i + 1; j < rows.length; j++)
            if (rows[i].cells[4].innerHTML < rows[j].cells[4].innerHTML)
                rows[i].parentNode.insertBefore(rows[j], rows[i]);

}

function Neparni() {
    var table = document.getElementById("Tabela");
    var rows = table.rows;
    var i;
    for (i = 1; i < rows.length; i++) {
        if (i % 2 != 0) {
            rows[i].style.backgroundColor = "yellow";
        }
        else {
            rows[i].style.backgroundColor = "white";
        }
    }
}

function Polozili() {
    var table = document.getElementById("Tabela");
    var rows = table.rows;
    var i;
    for (i = 0; i < rows.length; i++) {
        if (rows[i].cells[4].innerHTML > 51) {
            rows[i].style.backgroundColor = "green";
        }
        else {
            rows[i].style.backgroundColor = "white";
        }
    }
}

function Pali() {
    var table = document.getElementById("Tabela");
    var rows = table.rows;
    var i;
    for (i = 0; i < rows.length; i++) {
        if (rows[i].cells[4].innerHTML < 51) {
            rows[i].style.backgroundColor = "red";
        }
        else {
            rows[i].style.backgroundColor = "white";
        }
    }
}

function IzdvojPolozili() {
    var table = document.getElementById("Tabela");
    var rows = table.rows;
    var i;
    for (i = 0; i < rows.length; i++) {
        if (rows[i].cells[4].innerHTML < 51) {
            table.deleteRow(i);
            i--;
        }        
    }
}