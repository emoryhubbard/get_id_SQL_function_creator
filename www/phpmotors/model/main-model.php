<?php
/*  The main model for PHP Motors. The code here
    whenever database access is needed, ie.
    access to the model. It is the interface
    to the database.
*/

function getClassifications() {
    $sql = 'SELECT classificationName, classificationId FROM carclassification ORDER BY classificationName ASC';
    return query($sql);
}


