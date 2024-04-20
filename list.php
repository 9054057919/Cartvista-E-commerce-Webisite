<!DOCTYPE html>
<html>

<head>
    <?php
$protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';
         $host = $_SERVER['HTTP_HOST'];
         $url_ = $protocol . '://' . $host . $_SERVER['REQUEST_URI'];
         $_u_=str_replace("list.php", "product.php", $url_);
include 'head.php';
include "config.php";
?>

    <title>Products</title>
</head>

<body>
    <?php
require_once("header.php");
if (!isset($_GET['cat'])) {
    
    $_SESSION['_cat'] = '';
    
    
} else {
    $_SESSION['_cat'] = " and cat=" . $_GET['cat'];
}
if (!isset($_GET['subcat'])) {
    
    $_SESSION['_subcat'] = '';
    
    
} else {
    $_SESSION['_subcat'] = " and subcat=" . $_GET['subcat'];
}
if (!isset($_GET['search'])) {
    
    $_SESSION['se_'] = '';
    
    
} else {
    $_SESSION['se_'] = " and name like '%" . $_GET['search'] . "%' or des_short like '%" . $_GET['search'] . "%'";
}
if (!isset($_GET['max'])) {
    $_SESSION['max'] = 1000000;
} else {
    $_SESSION['max'] = $_GET['max'];
}
if (!isset($_GET['min'])) {
    $_SESSION['min'] = 0;
} else {
    $_SESSION['min'] = $_GET['min'];
}

?>
   <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        <div class="">
            <h1 class="page-title">Products<span>Shop Now</span></h1>
        </div><!-- End .container -->
    </div>
    <div class="container flex_ justify-content margin-top-20">
              <button class="apply_filters"><i class="fas fa-filter"></i>&nbsp;&nbsp;Filters</button>
              <div class="flex_ align-items">
                  <p>View : <i class="fas fa-list pointer" style="color:#777;font-size: 20px;" ></i> &nbsp;&nbsp;<i class="fas fa-th pointer" style="font-size: 20px;" onclick="window.location.href='<?php echo $_u_;?>'"></i></p>
              </div>
          </div>

    <section class="flex_ product_page">
        <div class="product_page_left">
            <div class="products_left">
                <div class="filter-product">
                    <p class="filter-price-text">Price Filter</p>
                    <div class="flex_ align-items justify-content price-range_">
                        <p>0</p>
                        <p>1000000</p>
                    </div>
                    <div class="price-range-slider">
                        <input type="range" min="0" max="100" value="0" id="minPrice">
                        <input type="range" min="0" max="100" value="<?php
echo (int) $_SESSION['max'];
?>" id="maxPrice">
                        <div class="range-pro"></div>
                    </div>
                    <form class="flex_ align-items justify-content margin-top-20" method="get" action="product.php">
                        <div class="flex_ align-items no-css">
                            <p>$</p>
                            <p class="f_l_11"><?php
echo $_SESSION['min'];
?></p>
                            <input type="number" name="min" class="f_l_1" value="<?php
echo $_SESSION['min'];
?>" hidden>
                            <p>-</p>
                            <p>$</p>
                            <p class="f_l_12"><?php
echo $_SESSION['max'];
?></p>
                            <input type="number" name="max" class="f_l_2" value="<?php
echo $_SESSION['max'];
?>" hidden>
                        </div>
                        <button type="submit" class="filter-btn">Filter</button>
                    </form>
                </div>
                <div class="fil-line margin-top-20"></div>
                <div class="margin-top-20 cat_p_">
                    <p class="filter-price-text">Category</p>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;
&nbsp;Laptop
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;
&nbsp;Led TV
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Smart Watches
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Mobile Accessories
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;SmartPhones
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;HeadPhones
                    </div>

                </div>
                <div class="fil-line margin-top-20"></div>
                <div class="margin-top-20">
                    <p class="filter-price-text">Colours</p>
                    <div class="filter-colors">
                        <a href="#" style="background: #b87145;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #f0c04a;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #333333;"><span class="sr-only">Color Name</span></a>
                        <a href="#" class="selected" style="background: #cc3333;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #3399cc;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #669933;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #f2719c;"><span class="sr-only">Color Name</span></a>
                        <a href="#" style="background: #ebebeb;"><span class="sr-only">Color Name</span></a>
                    </div>
                </div>
                <div class="fil-line margin-top-20"></div>
                <div class="margin-top-20 cat_p_">
                    <p class="filter-price-text">Brands</p>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Dell
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;HP
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Samsung
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Boat
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;Lenovo
                    </div>


                </div>
                <div class="fil-line margin-top-20"></div>
                <div class="margin-top-20 cat_p_">
                    <p class="filter-price-text">Ratings & Reviews</p>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;<p class="product_stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;<p class="product_stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;<p class="product_stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;<p class="product_stars"><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                    </div>
                    <div class="flex_ align-items">
                        <input type="checkbox" class="cat_inp">&nbsp;&nbsp;<p class="product_stars"><i class="fas fa-star"></i></p>
                    </div>


                </div>
            </div>
        </div>
        <div class="space"></div>
        <div class="product_page_right">
            <div style="width: 100%">

                
<?php
$_SESSION['fetch_id'] = 0;
$_SESSION['p_sql']    = $sql = "SELECT * from item where id>" . $_SESSION['fetch_id'] . " and disable='0'  and (price<=" . $_SESSION['max'] . " and price>=" . $_SESSION['min'] . ")" . $_SESSION['_cat'] . $_SESSION['_subcat'] . $_SESSION['se_'] . " limit 10";
$result               = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $id_       = $row['id'];
        $name      = $row['name'];
        $price     = $row['price'];
        $img1      = $row['img1'];
        $des       = $row['des_short'];
        $star      = $row['star'];
        $review    = $row['reviews'];
        $shop      = $row['shop'];
        $dis       = $row['discount'];
        $max_price = $row['max_price'];
        
        echo '
<div class="p_list flex_ margin-bottom-10">
                    <div class="image_and_dis">
                        <img src="prod/' . $img1 . '">';
        if ($dis > 0) {
            echo '<p class="p_dis">' . $dis . '% OFF</p>';
        }
        echo '
                        
                    </div>
                    <div class="flex_ align-items justify-content mobile-flex-direction no-align-center" style="width:100%;">
                    <div class="flex_ flex-direction p_list_p justify-content-center">
                        <p class="p_list_shop_name">' . $shop . '</p>
                        <a class="p_list_p_name margin-top-10" href="single-product.php?id=' . $id_ . '">' . $name . '</a>
                        <p class="p_list_des margin-top-10">' . $des . '</p>
                    </div>
                    <div class="p_details flex_ justify-content-center flex-direction">
                        <p class="product_price" style="transform: translateX(0);"><span class="pr_dis">$' . $max_price . '</span>$' . $price . '</p>
                        <div class="flex_ margin-top-10">
                            <p class="product_stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half"></i></p>
                            &nbsp;
                            <p class="product_rev">(' . $review . ' Reviews)</p>

                        </div>
                        <div class="flex_ align-items margin-top-10">';
                        if ($row['stock'] == 0 or $row['num'] == 0) {
                        echo '<button class="btn-outline margin-top-10 p_no_stock" style="color:var(--red);border:1px solid var(--red);">OUT OF STOCK</button>';
                        } else {
                        echo '<button class="btn-outline margin-top-10 add_cart" data-pid=' . $id_ . '>Add to Cart</button>';
                        }
                        echo '&nbsp;&nbsp;
                        <button class="p_wish_btn add_to_wish" title=' . $id_ . '>
                        <img src="assets/images/heart.svg" title="Add to Wishlist">
                        </button>
                        </div>
                    </div>
                    </div>
                </div>
               ';
        $_SESSION['fetch_id'] = $row['id'];
        
        
    }
} else {
    echo "<img src='assets/images/no.svg' style='width:200px;margin:auto;padding:100px 0'>";
}

?>
           </div>

            <?php
$_SESSION['fetch_id'] = 0;
$_SESSION['p_sql']    = $sql = "SELECT * from item where id>" . $_SESSION['fetch_id'] . " and disable='0'  and (price<=" . $_SESSION['max'] . " and price>=" . $_SESSION['min'] . ")" . $_SESSION['_cat'] . $_SESSION['_subcat'] . $_SESSION['se_'] . " limit 10";
$result               = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $id_       = $row['id'];
        $name      = $row['name'];
        $price     = $row['price'];
        $img1      = $row['img1'];
        $star      = $row['star'];
        $review    = $row['reviews'];
        $dis       = $row['discount'];
        $max_price = $row['max_price'];
        echo '';
        $_SESSION['fetch_id'] = $row['id'];
        
        
    }
} else {
    echo "<img src='assets/images/no.svg' style='width:200px;margin:auto;padding:100px 0'>";
}

?>
       </div>
    </section>
    <center><button class="list_load_more_prod">Load More</button></center>
    <br>
    <?php
include 'footer.php';
?>
   <script type="text/javascript">
        $(document).ready(function() {
            const minSlider = $('#minPrice');
            const maxSlider = $('#maxPrice');
            const displayMin = $('.f_l_1');
            const displayMax = $('.f_l_2');
            const displayMinText = $('.f_l_11');
            const displayMaxText = $('.f_l_12');
            const rangeProgress = $('.range-pro');

            function updateRange() {
                const minValue = parseInt(minSlider.val()) * 10000;
                const maxValue = parseInt(maxSlider.val()) * 10000;
                const minPercentage = minSlider.val() + '%';
                const maxPercentage = (maxSlider.val() - minSlider.val()) + '%';

                rangeProgress.css({
                    "left": minPercentage,
                    "width": maxPercentage
                });

                displayMin.val(minValue);
                displayMinText.text(minValue);
                displayMax.val(maxValue);
                displayMaxText.text(maxValue);
            }

            minSlider.on('input', updateRange);
            maxSlider.on('input', updateRange);
            updateRange();
            /*var a = $(".product_page_right>.product").width();
 var windowWidth = window.innerWidth;

    // Log the window width to the console
    console.log("Window width: " + windowWidth + " pixels");
    if(windowWidth<=600){
        $(".product_img").css({'height':parseInt(a)+20+'px'});
        $(".product_img>img").css({'height':parseInt(a)+20+'px','width':a+'px'});
        $(".product_name").each(function() {
            // Check if text length exceeds 20 characters
            if ($(this).text().length > 40) {
                // Trim the text to 20 characters and add ellipsis
                var trimmedText = $(this).text().substring(0, 40) + "...";
                // Set the updated text
                $(this).text(trimmedText);
            }
        });
       // $(".product_page_right .add_cart").html('<i class="fas fa-cart-arrow-down"></i>');
     }*/
        });
    </script>
</body>

</html>