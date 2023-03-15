<a href="/phpmotors"><img src="/phpmotors/images/site/logo.png" alt="logo image"></a>
<div class="has-my-account">
    <?php
    if ($_SESSION['loggedin']) {
        echo '<a href="/phpmotors/accounts"><p>Welcome, ' . $_SESSION['clientData']['clientFirstname'] . "</p></a>";
        echo '<a href="/phpmotors/accounts/index.php?action=submitLogout"><p>Log Out</p></a>';

    }
    if (!$_SESSION['loggedin'])
        echo '<a href="/phpmotors/accounts/index.php?action=login"><p>My Account</p></a>';
    ?>
</div>