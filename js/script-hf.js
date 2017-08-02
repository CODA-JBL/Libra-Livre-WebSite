// Vérifie si l'url de la page contient "userpage",
// si oui l'utilisateur est connécté donc le bouton connexion est remplacé par le bouton deconnexion

if ( window.location.href.indexOf('userpage')> -1){
    $('.connexion').html('Deconnexion').removeClass('AIS connexion').addClass('deconnexion').wrap('<a href="index.php"></a>');
}

$(document).ready(function() {

  var count = false;
  var enter;



  function login(data) {
    for (var i = 0; i < data.users.length; i++) {

      if (($(".login").val()) === data.users[i].firstname && ($(".password").val()) === data.users[i].password && data.users[i].admin === "true") {

        window.location.href = "./administration.php";
        localStorage.setItem("connected", true);
        enter = true;
        break;
      } else if (($(".login").val()) === data.users[i].firstname && ($(".password").val()) === data.users[i].password) {

        localStorage.setItem("connected", true);
        window.location.href = "./reglement.php";
        enter = true;
        break;
      }
    }
    if (enter !== true) {
      alert("Identifiants ou mots de passe invalide.");
    }
  }

  function check_login() {

    $(".connexion").click(function() {
      $.ajax({
        url: 'list.json',
        type: 'get',
        dataType: 'json',

        success: function(data) {
          login(data);
          // alert("nope!");
        },
        error: function() {
          $('body').html('erreur chargement');
        }
      });
    });
  }

  function reset_login() {
    if (count === false) {
      $(".login").val("");
      $(".password").val("");
      count = true;
    }
  }

  function animate_login() {
    $(".connexion").addClass("insetShadowH");
    // if ($(".password").css("right") < "0px") {
      // $(".connexion").addClass("insetShadowH");
      // $(".password").show();

      // $(".password").animate({
      //   right: "+=252px",
      //   opacity: "1"
      // }, 1000);

      // $(".login").show();
      $(".login").addClass("anim_login");

// window.setTimeout(function(){$(".password").addClass("anim_pass");}, 500);
$(".password").addClass("anim_pass");
      // $(".login").animate({
        // right: "+=497px",
        // opacity: "1"
      // }, 1000, function() {

        check_login();
      // });
    // }
  }

  $(".connexion").click(function() {
    reset_login();
// $(this).hide();
    animate_login();



  });

  $(".btnAccueil").click(function() {
    $(this).toggleClass("insetShadow");
  });


  $('.password').keypress(function(e) {
    if (e.which == 13) {
      check_login();

      return false;
    }
  });
});
