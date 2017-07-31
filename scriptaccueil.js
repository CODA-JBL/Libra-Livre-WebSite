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
            $('#livre'+(i)).append('<img class="book_img" src="'+data.books[i].cover+'">');

        }

//-------------------------fonction hover livre => RESUME-------------//
        $(".ensembledroite").hide();
        $(".livre").click(function(){

          //on créer une variable qui recupere l'ID de .livre//
        var theBook = (this).getAttribute('id').substr(5,((this).getAttribute('id').length ));
        $('#resume').html('<b><h3>' + '<a  href="./fiche.php">' + data.books[theBook].title + '</a>' + '</h3><br>' + '<h5>'+data.books[theBook].author+'</h5></br>' + data.books[theBook].description + '</b>');

//         var res = $('#resume').val().length();
//
// if (res > 50) {
//   $('#resume').val().substring(50, res);

// }

        $('.ensembledroite').show(100);
        // $(this).children(".fav").removeClass("anim_fav");
        // $(this).children(".fav").removeClass("anim_fav_rev");
        // $(this).find("img").toggleClass("blurImg");
        $(this).children(".fav").toggleClass("anim_fav");
        $(this).children(".fav").html("</br>" +'<a class="fiche_link" href="./fiche.php">'+ data.books[theBook].title + '</a>' + '</br><a href="./userpage.html"><img class="add_img" src="./star-add.png"></a>');




//         $(".livre").scroll(function(){
//           $(".ensembledroite").scroll();
// window.scrollTo(0, $(".ensembledroite").offset().top);
// });
 });

         $(".livre").mouseleave(function(){

           var target = $(this);
          //  window.setTimeout(function(){
          //  target.children(".fav").removeClass("anim_fav");
           target.children(".fav").addClass("anim_fav_rev");
           window.setTimeout(function(){
              target.children(".fav").removeClass("anim_fav_rev");},750);



           });
      },
        error : function() {
        $('#resume').html('erreur chargement');
        }
    });


//------------------------------------------------------------------------------
});
