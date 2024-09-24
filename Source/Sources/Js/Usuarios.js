function algo(){
    var table = document.getElementById("clickTable");
    for (var i = 0; i < table.rows.length; i++) {    
        for (var j = 0; j < table.rows[i].cells.length; j++){
            table.rows[i].cells[j].onclick = function () {
                r = this.parentNode.rowIndex;
                document.getElementById("intento2").value = table.rows[r].cells[0].innerHTML
            };            
        }
    }
}
