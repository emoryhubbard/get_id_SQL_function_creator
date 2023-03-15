<?php
if (!$_SESSION['loggedin'])
    header('Location: /phpmotors');
?>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <title>PHP Motors Page Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" media="screen">
    <link rel="stylesheet" href="/phpmotors/css/small.css" media="screen">
    <link rel="stylesheet" href="/phpmotors/css/medium.css" media="screen">
    <link rel="stylesheet" href="/phpmotors/css/large.css" media="screen">
</head>
<body>
    <div class="body-div">
        <header>
            <?php require_once $_SERVER['DOCUMENT_ROOT'] . "/phpmotors/snippets/header.php"?>
        </header>
        <nav>
            <?php print $navList; ?>
        </nav>
        <main>
            <h1><?php echo $_SESSION['clientData']['clientFirstname'] . " " . $_SESSION['clientData']['clientLastname'];?></h1>
            <?php
            $cd = $_SESSION['clientData'];
            $ul = '<ul>';
            $ul .= "<li>First name: $cd[clientFirstname]</li>";
            $ul .= "<li>Last name: $cd[clientLastname]</li>";
            $ul .= "<li>Email: $cd[clientEmail]</li>";
            $ul .= "<li>Client level: $cd[clientLevel]</li>";
            $ul .= '</ul>';
            echo $ul;
            if ($cd['clientLevel'] > 1) {
                echo '<p><a class="p-link" href="/phpmotors/vehicles">Vehicle Management</a></p>';
            }
            ?>
        </main>
        <footer>
            <?php require_once $_SERVER['DOCUMENT_ROOT'] . "/phpmotors/snippets/footer.php"?>
        </footer>
    </div>
</body>
</html>