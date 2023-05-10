<?php
include 'config/constants.php';
$username_email = $_SESSION['signin-data']['username_email'] ?? null;
$password = $_SESSION['signin-data']['password'] ??  null;
unset($_SESSION['signin-data']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>UNDEREMPLOYED</title>
    <!-- CUSTOM STYLESHEET -->
    <link rel="stylesheet" href="css/signin_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

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


                <form action="<?= ROOT_URL ?>signin-logic.php" method="POST">
                    <h1>Frame Flair</h1>
                    <?php
                    if (isset($_SESSION['signup-success'])) :
                    ?>
                        <div class="alert__message success">
                            <p>
                                <?= $_SESSION['signup-success'];
                                unset($_SESSION['signup-success']);
                                ?>
                            </p>
                        </div>
                    <?php elseif (isset($_SESSION['signin'])) : ?>
                        <div class="alert__message error">
                            <p>
                                <?= $_SESSION['signin'];
                                unset($_SESSION['signin']);
                                ?>
                            </p>
                        </div>
                    <?php endif ?>
                    <br>
                    <input type="text" name="username_email" value='<?= $username_email ?>' placeholder="Username or Email">
                    <input type="password" name="password" value='<?= $password ?>' placeholder=" Password">
                    <br>

                    <button type="submit" class="button" name="submit">Login</button>
                    <br>
                    <small>Don't have an account? <a href="signup.php">Sign up</a></small>
                </form>
            </div>

        </div>
    </section>
</body>

</html>