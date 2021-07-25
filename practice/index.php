<?php

// Assign
echo "Hello";
$num = 9;
$lang = ['es' => 'español', 'en' => 'english'];
// Aritmetic

echo "Sum 2 + 2" . ((int) 2 + (int) 2);

echo "Substract 2 - 2" . (2 - 2);

echo "Product 2 * 2" . (2 * 2);

echo "Division 2 / 2" . 2 / 2;

echo "Module 2 % 2" . 2 % 2;

echo "Exp 2 ** 2" . 2 ** 2;

// Comparation
// Equal ==, values '9' == 9
// Exact equals value and types 9 === 9
// Diff !=, value
// Diff !==, value and types
// <, >, <= >=
// Variables variables
$app = 'name';
$name = 'Pedro';

echo $app."\n";
echo $$app; // print Pedro

?>
