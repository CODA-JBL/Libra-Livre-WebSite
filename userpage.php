
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Libra Livre</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="./bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="header-footer.css" rel="stylesheet" type="text/css" />
    <link href="styleUser.css" rel="stylesheet" type="text/css" />
    <link href="styleaccueil.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./bootstrap/fonts">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="script-hf.js"></script>
    <script type="text/javascript" src="scriptUser.js"></script>


</head>



<body>
<?php include('header.php');
?>

<div class="bandeaureg">
    <p>Veuillez prendre connaissance du réglement avant d'éfectuer vôtre premier emprunt &nbsp &nbsp<a id="btnreg">Consulter</a></p>
</div>

<div class="row">
<div class="infos col -xs-12 col-sm-4">
    <button class="btnUser" id="alerte">Attention Retard ! </button>
    <div class="boxinfos">
        <div class="imguser"></div>
    </div>
</div>

    <div class="livreCar col-xs-12 col-sm-8">
<!--        <div id="myCarousel" class="carousel slide" data-ride="carousel">-->
<!--            <!-- Wrapper for slides -->
<!--            <div class="carousel-inner">-->
<!--                <div class="item active">-->
<!--                    <div class="row">-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre0"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre1"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre2"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre3"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre4"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre5"><div class="fav"></div></div>-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!--                <div class="item">-->
<!--                    <div class="row">-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre6"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre7"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre8"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre9"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre10"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre11"><div class="fav"></div></div>-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!--                <div class="item">-->
<!--                    <div class="row">-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre12"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre13"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre14"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre15"> <div class="fav"></div> </div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre16"><div class="fav"></div></div>-->
<!--                        <div class="livre col-xs-6 col-sm-6 col-md-2" id="livre17"><div class="fav"></div></div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!---->
<!--            <!-- Left and right controls -->
<!--            <a class="left carousel-control" href="#myCarousel" data-slide="prev">-->
<!--                <span class="glyphicon glyphicon-chevron-left"></span>-->
<!--                <span class="sr-only">Previous</span>-->
<!--            </a>-->
<!--            <a class="right carousel-control" href="#myCarousel" data-slide="next">-->
<!--                <span class="glyphicon glyphicon-chevron-right"></span>-->
<!--                <span class="sr-only">Next</span>-->
<!--            </a>-->
<!--        </div>-->

        <h2>Favoris</h2>
        <div class="favbox">

        </div>

        <h2>Emprunts</h2>
        <div class="empbox">

        </div>

    </div>
</div>


<?php include ('footer.php');
?>

</body>