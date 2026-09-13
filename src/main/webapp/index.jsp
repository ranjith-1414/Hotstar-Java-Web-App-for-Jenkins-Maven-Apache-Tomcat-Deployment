<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="./assets/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./assets/css/style.css">

    <title>Disney+ Hotstar - Watch TV Shows Online</title>
</head>

<body>

    <header class="navbar">
        <a href="#" class="brand">
            <img src="./assets/img/logo (1).svg" class="logo" alt="Disney Plus Hotstar">
        </a>

        <button class="menu-toggle" aria-label="Open navigation menu">
            ☰
        </button>

        <nav class="nav-links" aria-label="Main navigation">
            <a href="#">TV</a>
            <a href="#">Movies</a>
            <a href="#">Sports</a>
            <a href="#">Premium</a>
            <a href="#">Disney+</a>
        </nav>

        <div class="right-container">
            <div class="search-wrapper">
                <span class="search-icon">⌕</span>
                <input
                    type="search"
                    class="search-box"
                    placeholder="Search movies and shows"
                    aria-label="Search movies and shows"
                >
            </div>

            <button class="sub-btn">Subscribe</button>
            <a href="#" class="login-link">Login</a>
        </div>
    </header>

    <main>

        <!-- Hero Carousel -->
        <section class="carousel-container" aria-label="Featured content">
            <div class="carousel">
                <div class="hero-content">
                    <p class="hero-label">STREAM NOW</p>
                    <h1>Unlimited entertainment for everyone</h1>
                    <p>
                        Watch movies, TV shows, sports and exclusive originals
                        anytime, anywhere.
                    </p>

                    <div class="hero-buttons">
                        <button class="watch-btn">▶ Watch Now</button>
                        <button class="info-btn">＋ Add to Watchlist</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Brand Cards -->
        <section class="brand-section">
            <h2 class="section-title">Explore Disney</h2>

            <div class="video-card-container">
                <div class="video-card">
                    <img src="./assets/img/disney.png" alt="Disney" class="video-card-image">
                    <video
                        src="./assets/video/disney.mp4"
                        muted
                        loop
                        playsinline
                        class="card-video">
                    </video>
                </div>

                <div class="video-card">
                    <img src="./assets/img/pixar.png" alt="Pixar" class="video-card-image">
                    <video
                        src="./assets/video/pixar.mp4"
                        muted
                        loop
                        playsinline
                        class="card-video">
                    </video>
                </div>

                <div class="video-card">
                    <img src="./assets/img/marvel.png" alt="Marvel" class="video-card-image">
                    <video
                        src="./assets/video/marvel.mp4"
                        muted
                        loop
                        playsinline
                        class="card-video">
                    </video>
                </div>

                <div class="video-card">
                    <img src="./assets/img/star-wars.png" alt="Star Wars" class="video-card-image">
                    <video
                        src="./assets/video/star-war.mp4"
                        muted
                        loop
                        playsinline
                        class="card-video">
                    </video>
                </div>

                <div class="video-card">
                    <img src="./assets/img/geographic.png" alt="National Geographic" class="video-card-image">
                    <video
                        src="./assets/video/geographic.mp4"
                        muted
                        loop
                        playsinline
                        class="card-video">
                    </video>
                </div>
            </div>
        </section>

        <!-- Movie Section Example -->
        <section class="content-section">
            <div class="section-heading">
                <h2>Recommended for You</h2>
                <a href="#" class="view-all">View All</a>
            </div>

            <div class="movies-list">
                <div class="card-container">

                    <article class="card">
                        <div class="card-image-wrapper">
                            <img src="./assets/img/poster 4.webp"
                                class="card-img"
                                alt="Chhichhore movie poster"
                                loading="lazy">

                            <button class="add-btn" aria-label="Add Chhichhore to watchlist">
                                +
                            </button>

                            <div class="play-overlay">▶</div>
                        </div>

                        <div class="card-body">
                            <h3 class="name">Chhichhore</h3>
                            <p class="meta">2019 · Drama · 2h 23m</p>
                            <p class="des">
                                A heartwarming story of friendship, failure and college life.
                            </p>
                        </div>
                    </article>

                    <article class="card">
                        <div class="card-image-wrapper">
                            <img src="./assets/img/poster 4.png"
                                class="card-img"
                                alt="Avengers Endgame movie poster"
                                loading="lazy">

                            <button class="add-btn" aria-label="Add Avengers Endgame to watchlist">
                                +
                            </button>

                            <div class="play-overlay">▶</div>
                        </div>

                        <div class="card-body">
                            <h3 class="name">Avengers: Endgame</h3>
                            <p class="meta">2019 · Action · 3h 1m</p>
                            <p class="des">
                                Superheroes unite to reverse Thanos' snap and save the universe.
                            </p>
                        </div>
                    </article>

                    <article class="card">
                        <div class="card-image-wrapper">
                            <img src="./assets/img/poster 11.png"
                                class="card-img"
                                alt="Ford versus Ferrari movie poster"
                                loading="lazy">

                            <button class="add-btn" aria-label="Add Ford v Ferrari to watchlist">
                                +
                            </button>

                            <div class="play-overlay">▶</div>
                        </div>

                        <div class="card-body">
                            <h3 class="name">Ford v Ferrari</h3>
                            <p class="meta">2019 · Sports · 2h 32m</p>
                            <p class="des">
                                The real-life rivalry between Ford and Ferrari at Le Mans.
                            </p>
                        </div>
                    
