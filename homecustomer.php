<link rel="icon"  href="images/design3.jpg">
<?php
require_once('function.php');
dbconnect();
session_start();

if (!is_user()) {
	redirect('index.php');
}

?>


<?php
$user = $_SESSION['username'];
$usid = $pdo->query("SELECT id FROM users WHERE username='".$user."'");
$usid = $usid->fetch(PDO::FETCH_ASSOC);
$uid = $usid['id'];
 
$customerr = $pdo->query("SELECT COUNT(*) as sum FROM customer"); 
$orderr = $pdo->query("SELECT COUNT(*) as sum FROM `order`");
$incomee = $pdo->query("SELECT sum(amount) as sum FROM `income` WHERE date > DATE_SUB(NOW(), INTERVAL 30 DAY)");
$expensee = $pdo->query("SELECT sum(amount) as sum FROM `expense` WHERE date > DATE_SUB(NOW(), INTERVAL 30 DAY)");

$customer = $customerr->fetch(PDO::FETCH_ASSOC); 
$order = $orderr->fetch(PDO::FETCH_ASSOC);
$income = $incomee->fetch(PDO::FETCH_ASSOC);
$expense = $expensee->fetch(PDO::FETCH_ASSOC);

include ('headercustomer.php');
?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                      <!-- Header -->
          <header class="w3-container" style="padding-top:22px">
          <h1><b></i><p style="color:Black;"> Customer Dashboard</b></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
  box col
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: black;
}
</style>
</head>
<body>

            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $customer['sum'] ?></div>
                                    <div>Total Customers!</div>
                                </div>
                            </div>
                        </div>
                        <a href="customeradd.php">
                            <div class="panel-footer">
                                <span class="pull-left">Customer Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $order['sum'] ?></div>
                                    <div>Total Orders!</div>
                                </div>
                            </div>
                        </div>
                        <a href="orderaddcustomer.php">
                            <div class="panel-footer">
                            	<span class="pull-left">Add Order</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-money fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">

                                    <div>Give Review</div>
                                </div>
                            </div>
                        </div>
                        <a href="orderlistcustomer.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Orders</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
				 <div class="col-lg-3 col-md-6">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-credit-card fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div>View Order History</div>
                                </div>
                            </div>
                        </div>
                        <a href="smslistcustomer.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Order History</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
               
            </div>

           






</head>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

<!--
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="img/logo.png" type="image/png">


     Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>




<?php
function income($today,$pdo) {
	$sites = $pdo->query("SELECT sum(amount) as sum FROM `income` WHERE date LIKE '%$today%'");
	$sites = $sites->fetch(PDO::FETCH_ASSOC);
	$sites2 = $pdo->query("SELECT sum(amount) as sum FROM `order` WHERE date_received LIKE '%$today%'");
	$sites2 = $sites2->fetch(PDO::FETCH_ASSOC);
	$site = $sites['sum'] + $sites2['sum'];
	return $site;
}
function profit($today,$pdo) {
	$sites = $pdo->query("SELECT sum(amount) as sum FROM `income` WHERE date LIKE '%$today%'");
	$sites = $sites->fetch(PDO::FETCH_ASSOC);
	$sites2 = $pdo->query("SELECT sum(amount) as sum FROM `order` WHERE date_received LIKE '%$today%'");
	$sites2 = $sites2->fetch(PDO::FETCH_ASSOC);
	$site1 = $sites['sum'] + $sites2['sum'];
	$site2 = $pdo->query("SELECT sum(amount) as sum FROM expense WHERE date LIKE '%$today%'");
	$site2 = $site2->fetch(PDO::FETCH_ASSOC);
	$site = $site1 - $site2['sum'];
	if($site<0) $site=0;
	return $site;
}
function expenses($today,$pdo) {
	$sites = $pdo->query("SELECT sum(amount) as sum FROM expense WHERE date LIKE '%$today%'");
	$sites = $sites->fetch(PDO::FETCH_ASSOC);
	$site = $sites['sum'];
	return $site;	
}

$income = '"'.income( date('m/d/Y', (strtotime(date('m/d/Y'))-((29*60*60*24)))),$pdo).'"';
$dates = '"'.date('Y-m-d', strtotime(date('Y-m-d')) - (29*60*60*24) ).'"';	
		
for ($i = 28; $i >= 1; $i--) {
	$income .= ',"'.income( date('m/d/Y', (strtotime(date('m/d/Y'))-($i*60*60*24)) ) ,$pdo).'"';
	$dates .= ',"'.( date('Y-m-d', (strtotime(date('Y-m-d'))-($i*60*60*24)) ) ).'"';	
}
$dates .= ',"'.date('Y-m-d').'"';
$income .= ',"'.income(date('m/d/Y'),$pdo).'"';

$expenses = '"'.expenses( date('Y-m-d', (strtotime(date('Y-m-d'))-((29*60*60*24)))) ,$pdo).'"';
for ($i = 28; $i >= 1; $i--) {
	$expenses .= ',"'.expenses( date('Y-m-d', (strtotime(date('Y-m-d'))-($i*60*60*24)) ) ,$pdo).'"';
}
$expenses .= ',"'.expenses(date('Y-m-d'),$pdo).'"';

$profit = '"'.profit( date('Y-m-d', (strtotime(date('Y-m-d'))-((29*60*60*24)))) ,$pdo).'"';
for ($i = 28; $i >= 1; $i--) {
	$profit .= ',"'.profit( date('Y-m-d', (strtotime(date('Y-m-d'))-($i*60*60*24)) ) ,$pdo).'"';
}
$profit .= ',"'.profit(date('Y-m-d'),$pdo).'"';
?>

<script>
//current year income / expense	
var barChartData3 = {
		labels : [<?php echo $dates; ?>],
		datasets : [
			{
				label: "Expenses",
				fillColor : "rgba(220,0,0,0.2)",
				strokeColor : "rgba(220,0,0,1)",
				pointColor : "rgba(220,0,0,1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [<?php echo $expenses; ?>]
			} ,
			{
				label: "Income",
				fillColor : "rgba(0,120,0,0.2)",
				strokeColor : "rgba(0,120,0,1)",
				pointColor : "rgba(0,320,0,1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [<?php echo $income; ?>]
			} ,
			{
				label: "Profit",
				fillColor : "rgba(13, 31, 162,0.2)",
				strokeColor : "rgba(13, 31, 162,1)",
				pointColor : "rgba(13, 31, 162,1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [<?php echo $profit; ?>]
			} 
		]

	}
	window.onload = function(){
		var ctx = document.getElementById("myChart").getContext("2d");
		window.myBar = new Chart(ctx).Bar(barChartData3, {
			responsive : true
		});
	}	 

	
</script>




<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>

</style>
</head>





<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">Catalog</p>
    <p class="w3-right">

    </p>
  </header>

  <!-- Image header -->
  <div class="w3-display-container w3-container">

    <img src="images/news.jpg" alt="Jeans" style="width:100%">
    <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
      <h1 class="w3-jumbo w3-hide-small">New arrivals</h1>
      <h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
      <h1 class="w3-hide-small">COLLECTION 2024</h1>
      <p><a href="#jeans" class="w3-button w3-black w3-padding-large w3-large">SHOP NOW</a></p>
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p>8 items</p>
  </div>

  <!-- Product grid -->
  <div class="w3-row w3-">
    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="images/cloth2.jpg" style="width:100%">
        <p>Tamara Kurung<br><b>RM 799.00</b></p>
      </div>
      <div class="w3-container">
        <img src="images/cloth3.jpg" style="width:100%">
        <p>Raudies Dress<br><b>RM 1199.00</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/cloth4.jpg" style="width:100%">
          <span class="w3-tag w3-display-topleft">New Design</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black"><a href="orderaddcustomer.php">Order now <i class="fa fa-shopping-cart"></a></i></button>
          </div>
        </div>
        <p>Aleeqa Kurung<br><b>RM 1100.00</b></p>
      </div>
      <div class="w3-container">
        <img src="images/cloth5.jpg" style="width:100%">
        <p>Qilda Kurung<br><b>RM 1299.00</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="images/cloth6.jpg" style="width:100%">
        <p>Ameena Kurung<br><b>RM 1999.00</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/cloth8.jpg" style="width:100%">
          <span class="w3-tag w3-display-topleft">Sale</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black"><a href="orderaddcustomer.php">Order now <i class="fa fa-shopping-cart"></a></i></button>
          </div>
        </div>
        <p>Mulan Kurung<br><b class="w3-text-red">RM 899.00</b></p>
      </div>
    </div>
    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="images/cloth9.jpg" style="width:100%">
        <p>Halima Kurung<br><b>RM 899.00</b></p>
      </div>
      <div class="w3-container">
        <img src="images/cloth7.jpg" style="width:100%">
        <p>Nala<br><b>RM 799.00</b></p>
      </div>
    </div>
  </div>



<!-- Newsletter Modal -->
<div id="newsletter" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px" height="20px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <h2 class="w3-wide">NEWSLETTER</h2>
      <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
    </div>
  </div>
</div>

<script>
// Accordion 
function myAccFunc() {
  var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>


<?php
 include ('footer.php');
 ?>
