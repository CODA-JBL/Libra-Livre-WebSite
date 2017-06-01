$(document).ready (function(){


//------------FONCTION menu gauche format telephone------------//

    $(".btn-blue").click(function(){
      $(".ensemblegauche").toggle(500);
    });

//-----------FONCTION livre menu droite & resumé---------//

    $.ajax({
         url : 'list.json',
         type : 'get',
         dataType : 'json',

      success: function (data) {
        for (var i=0; i<data.books.length; i++){
            $('#livre'+(i)).html('<img src="'+data.books[i].cover+'">');
        }

//-------------------------fonction hover livre => RESUME-------------//
        $(".ensembledroite").hide();
        $(".livre").hover(function(){

          //on créer une variable qui recupere
        var theBook = (this).getAttribute('id').substr(5,((this).getAttribute('id').length ));
        $('#resume').html('<b><h3>' + data.books[theBook].title + '</h3><br>' + data.books[theBook].description+ '</b>');
        $('.ensembledroite').toggle();

        });
      },
        error : function() {
        $('#resume').html('erreur chargement');
        }
    });

//------------------------------------------------------------------------------
});
