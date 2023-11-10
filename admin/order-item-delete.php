<?php

require '../config/function.php';

$paramResult = checkParamId('index');
if(is_numeric($paramResult)){

    $indexValue = validate($paramResult);

    if(isset($_SESSION['productItems']) && isset($_SESSION['productItemIds'])){

        unset($_SESSION['productItems'][$indexValue]);
        unset($_SESSION['productItemIds'][$indexValue]);

        redirect('order-create.php','Item Removed');
    }else{
        redirect('order-create.php','No Such Item');
    }

}else{
    redirect('order-create.php','Parameter Not Numeric');
}

?>

