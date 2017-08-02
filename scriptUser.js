$(document).ready(function(){

    $("#alerte").click(function(){
        alert("Retard : ... / ...");
    })

    $("#btnreg").click(function(){
        alert("Reglement : ...");
    })

    $.ajax({
        url: 'list.json',
        type: 'get',
        dataType: 'json',

        success: function (data) {
            for (var i = 0; i < data.books.length; i++) {
                $('.favbox').append('<img class="book_img" src="' + data.books[i].cover + '">');
                $('.empbox').append('<img class="book_img" src="' + data.books[i].cover + '">');

            }
        }
    });
});