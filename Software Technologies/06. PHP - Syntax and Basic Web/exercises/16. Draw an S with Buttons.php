<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>First Steps Into PHP</title>
</head>
<body>
<!--Write your PHP Script here-->
<?php
    for($i = 0; $i < 9; $i++){
        if ($i==0 || $i==4 || $i==8) {
            for ($j = 0; $j < 5; $j++){
                echo "<button style='background-color: blue'>1</button>";
            }
        }
        if ($i >= 1 && $i <=3) {
            echo "<button style='background-color: blue'>1</button>";
            for ($j = 0; $j < 4; $j++){
                echo "<button>0</button>";
            }
        } else if ($i >= 5 && $i <=7) {
            for ($j = 0; $j < 4; $j++){
                echo "<button>0</button>";
            }
            echo "<button style='background-color: blue'>1</button>";
        }
        echo "<br>";
    }
?>
</body>
</html>