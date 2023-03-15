<?php
function checkEmail($clientEmail) {
    $valEmail = filter_var($clientEmail, FILTER_VALIDATE_EMAIL);
    return $valEmail;
}
function checkPassword($clientPassword) {
    $pattern = '/^(?=.*[[:digit:]])(?=.*[[:punct:]\s])(?=.*[A-Z])(?=.*[a-z])(?:.{8,})$/';
    return preg_match($pattern, $clientPassword);
}
function valid($input, $pattern) {
    $phpPattern = '/' . $pattern . '/';
    return preg_match($phpPattern, $input);
}
function getNav($classifications) {
    $navList = "<ul class='top-nav'>";
    $navList .= "<li><a href='/phpmotors/index.php' title='View the PHP"
        . " Motors home page'>Home</a></li>";
    foreach ($classifications as $cl)
        $navList .= "<li><a href='/phpmotors/index.php?action=" . urlencode($cl['classificationName']) . "' title='View our $cl[classificationName] product line'>$cl[classificationName]</a></li>";
    $navList .= '</ul>';
    return $navList;
}