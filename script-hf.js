$(document).ready(function() {

  var count = false;
  var enter;

  function login(data) {
    for (var i = 0; i < data.users.length; i++) {

      if (($(".login").val()) == data.users[i].firstname && ($(".password").val()) == data.users[i].password && data.users[i].admin == "true") {

        window.location.href = "./administration.php";
        localStorage.setItem("connected", true);
        enter = true;
        break;
      } else if (($(".login").val()) == data.users[i].firstname && ($(".password").val()) == data.users[i].password) {

        localStorage.setItem("connected", true);
        window.location.href = "./reglement.php";
        enter = true;
        break;
      }
    }
    if (enter !== true) {
      alert("nope!");
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
      $(".password").addClass("anim_pass");
      // $(".password").animate({
      //   right: "+=252px",
      //   opacity: "1"
      // }, 1000);

      // $(".login").show();
      $(".login").addClass("anim_login");
      // $(".login").animate({
        // right: "+=497px",
        // opacity: "1"
      // }, 1000, function() {

        // check_login();
      // });
    // }
  }

  $(".connexion").click(function() {
    reset_login();

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
