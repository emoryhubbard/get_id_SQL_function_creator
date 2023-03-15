<?php
/*  The vehicles model for PHP Motors. Used
    whenever database access to the vehicles
    model is needed. It is the interface
    to the database for vehicle operations.
*/
$invMakePattern = "^.{1,30}$";
$invModelPattern = "^.{1,30}$";
$invPricePattern = "^[1-9]\d*(\.\d+)?$";
$invColorPattern = "^.{1,20}$";
$classificationNamePattern = "^.{1,30}$";

function insertClassification($classification) {
    $sql = "INSERT INTO carclassification (classificationName) VALUES ('$classification')";
    return rowsChanged($sql);

}
function insertVehicle($invMake, $invModel, $invDescription, $invImage, $invThumbnail, $invPrice, $invStock, $invColor, $classificationId) {
    $sql = "INSERT INTO inventory (invMake, invModel, invDescription, invImage, invThumbnail, invPrice, invStock, invColor, classificationId) VALUES ('$invMake','$invModel', '$invDescription', '$invImage', '$invThumbnail', '$invPrice', '$invStock', '$invColor', '$classificationId')";
    return rowsChanged($sql);
}