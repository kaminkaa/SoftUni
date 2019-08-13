<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>First Steps Into PHP</title>
    <style>
        div {
            display: inline-block;
            margin: 5px;
            width: 20px;
            height: 20px;
        }
    </style> 
</head>
<body>
<!--Write your PHP Script here-->

    <?php
    $color = 0;
    for($i = 0; $i < 5; $i++){
        $subcolor = $color;
        for ($j = 0; $j < 10; $j++) {
            echo "<div style='background-color: rgb($subcolor,$subcolor,$subcolor)'></div>";
            $subcolor += 5;
        }
        echo "<br>";
        $color += 51;
    }
    ?>

</body>
</html>