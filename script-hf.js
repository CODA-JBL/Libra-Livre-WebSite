$(document).ready(function() {
  $(".AIS").click(function(){
    $(this).toggleClass("insetShadow");
  });
$(".connexion").click(function(){

  if ($(".password").css("right") < "0px"){
  $(".password").show();
  $(".password").animate({
    right: "+=252px",
    opacity: "1"
  }, 1000) ;


$(".login").show();
$(".login").animate({
  right: "+=497px",
  opacity: "1"
}, 1000) ;
}

  // $(this).css("box-shadow","inset 0 0 0 1px #27496d,inset 0 5px 30px #193047");


  if (($(".login").val())!== "" && ($(".password").val())!== ""){
    window.location.href = "./reglement.php";
  }

});

});
