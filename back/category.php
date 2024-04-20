<?php
$_cat_ = array (
  array("0","1.png","Headphone",array('Oppo','Vivo','Iphone')),
  array("1","2.png","Headphone",array('Apple Smartwatch','Boat Smartwatch','Firebolt')),
  array("2","3.png","Smartwatch",array('Boat','boss','Dj headphones')),
  array("3","4.png","Mobile",array('Oppo','Vivo','Iphone')),
  array("4","5.png","Headphone",array('Boat','boss','Dj')),
  
  
);
















if($_POST['action']=='cat'){
$categoryID = isset($_POST['category_id']) ? $_POST['category_id'] : null;
$subcategories = array();
foreach ($_cat_ as $category) {
    if ($category[0] == $categoryID && isset($category[3])) {
        $subcategories = $category[3];
        break;
    }
}

// Return subcategories as JSON
echo json_encode($subcategories);}
?>