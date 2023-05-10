<?php
include 'partials/header.php';

$featured_query = "SELECT * FROM posts WHERE is_featured=1";
$featured_result = mysqli_query($connection, $featured_query);
$featured = mysqli_fetch_assoc($featured_result);

$query = "SELECT * FROM posts ORDER BY date_time DESC";
$posts = mysqli_query($connection, $query);
?>
<section class="search__bar">
  <form class="container search__bar-container" action="<?= ROOT_URL ?>search.php" method="GET">
    <div>
      <i class="uil uil-search"></i>
      <input type="search" name="search" placeholder="Search">
      <button type="submit" name="submit" class="btn">Go</button>
    </div>

  </form>
</section>
<br>
<br>
<br>

<section class="posts <?= $featured ? '' : 'section__extra-margin' ?>">
  <div class="container posts__container">
    <?php while ($post = mysqli_fetch_assoc($posts)) : ?>
      <article class="post">
        <a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>">
          <div class="post__thumbnail" style="width: 320px; height: 260px;">
            <img src="./images/<?= $post['thumbnail'] ?>">
          </div>
        </a>

        <div class="post__info">
          <?php // fetch category from categories using category_id
          $category_id = $post['category_id'];
          $category_query = "SELECT * FROM categories WHERE id=$category_id";
          $category_result = mysqli_query($connection, $category_query);
          $category = mysqli_fetch_assoc($category_result);
          ?>


          <div class="post__author">
            <?php
            // Fetch author from users table using author id
            $author_id = $post['author_id'];
            $author_query = "SELECT * FROM users WHERE id=$author_id";
            $author_result = mysqli_query($connection, $author_query);
            $author = mysqli_fetch_assoc($author_result);
            $author_firstname = $author['firstname'];
            $author_lastname = $author['lastname'];
            ?>
            <div class="post__author-avatar">
              <img src="./images/<?= $author['avatar'] ?>" alt="" />
            </div>
            <div class="post__author-info">
              <h5>By: <?= "{$author_firstname} {$author_lastname}" ?></h5>
              <small><?= date("M d, Y -  g:i A", strtotime($post['date_time'])) ?></small>
            </div>
          </div>
          <div class="post__content">
            <h3 class="post__title"><a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>"><?= $post['title'] ?></a></h3>
            <a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>">
              <p class="post__body" style="min-height: 110px;">
                <?= substr($post['body'], 0, 250) ?>...
              </p>
            </a>
          </div>
          <div class="post__category">
            <span> Category: <a href="<?= ROOT_URL ?>category-posts.php?id=<?= $post['category_id'] ?>" class="category__button"><?= $category['title'] ?></a></span>
          </div>


        </div>

      </article>
    <?php endwhile; ?>
  </div>
</section>


<?php
include './partials/footer.php';
?>