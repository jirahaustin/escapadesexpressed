<?php

include "config/constants.php";

//get beck form DATA IF THERE IS A REGISTRATION ERROR
$firstname = $_SESSION['signup-data']['firstname'] ?? null;
$lastname = $_SESSION['signup-data']['lastname'] ?? null;
$username = $_SESSION['signup-data']['username'] ?? null;
$email = $_SESSION['signup-data']['email'] ?? null;
$createpassword = $_SESSION['signup-data']['createpassword'] ?? null;
$confirmpassword = $_SESSION['signup-data']['confirmpassword'] ?? null;


//delete signup data session
unset($_SESSION['signup-data']);


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UNDEREMPLOYED</title>
    <!-- CUSTOM STYLESHEET -->
    <link rel="stylesheet" href="css/signup_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>


    <body>
        <section class="form__section">
            <div class="container" id="container">
                <div class="overlay-container">
                    <div class="overlay">
                        <div class="overlay-panel overlay-right">
                            <!-- add image here -->
                        </div>
                    </div>
                </div>
                <div class="form-container log-in-container">


                    <form action="<?= ROOT_URL ?>signup-logic.php" enctype="multipart/form-data" method="POST">
                        <h1>Register</h1>
                        <?php
                        if (isset($_SESSION['signup'])) : ?>
                            <div class="alert__message error">
                                <p>
                                    <?= $_SESSION['signup'];
                                    unset($_SESSION['signup']);
                                    ?>
                                </p>

                            </div>

                        <?php endif ?>
                        <br>
                        <input type="text" name="firstname" value="<?= $firstname ?>" placeholder="First Name">
                        <input type="text" name="lastname" value="<?= $lastname ?>" placeholder="Last Name">
                        <input type="username" name="username" value="<?= $username      ?>" placeholder="Username">
                        <input type="email" name="email" value="<?= $email          ?>" placeholder="Email">
                        <input type="password" name="createpassword" value="<?= $createpassword ?>" placeholder="Password">
                        <input type="password" name="confirmpassword" value="<?= $confirmpassword ?>" placeholder="Confirm Password">

                        <div class="form__control">
                            <label for="avatar">User Avatar</label>
                            <input type="file" name="avatar" id="avatar">
                        </div>
                        <br>
                        <button type="submit" name="submit" class="button">Sign Up</button>
                        <br>
                        <small>Already have an Account? <a href="signin.php">Sign in</a></small>
                    </form>

                </div>

            </div>

        </section>
    </body>



</html>