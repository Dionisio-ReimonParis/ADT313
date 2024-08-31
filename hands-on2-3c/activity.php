<?php

$table = array(
    "header"=> array(
        "Student ID",
        "Lastname",
        "Middlename",
        "Firstname",
        "Course",
        "Section"
    ),

    "body" => array(
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        ),
        array(
            "Lastname" => "Lastname",
            "Middlename" => "Middlename",
            "Firstname" => "Firstname",
            "Course" => "BSCS/BSIT",
            "Section" => "3A/3C"
        )
    )
    
);

echo "<table border='1' cellpadding='10'>";

echo "<tr>";

foreach($table["header"] as $h){
    echo "<td>$h</td>";
};

echo "</tr>";

foreach ($table["body"] as $index => $body) {
    echo "<tr>";

    $index ++;
    echo "<td>$index</td>"; 
    foreach ($body as $value) {
        echo "<td>$value</td>";
    }

    echo "</tr>";
};
?>