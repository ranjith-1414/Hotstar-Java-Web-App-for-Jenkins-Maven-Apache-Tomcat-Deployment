<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="./assets/img/favicon.ico" type="image/x-icon">

    <title>Disney+ Hotstar | Stream Movies & Shows</title>

    <link rel="stylesheet" href="./assets/css/style.css">

    <style>
        /* =========================
           MODERN HOTSTAR UI
        ========================= */

        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #05070b;
            color: #fff;
            font-family: 'Inter', sans-serif;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        /* =========================
           NAVBAR
        ========================= */

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 72px;
            z-index: 1000;

            display: flex;
            align-items: center;
            padding: 0 5%;

            background: rgba(5, 7, 11, 0.72);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(255, 255, 255, 0.06);
        }

        .logo {
            width: 115px;
            height: auto;
            object-fit: contain;
            margin-right: 45px;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 30px;
            list-style: none;
        }

        .nav-items a {
            position: relative;
            color: #b8bdc8;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.6px;
            transition: 0.3s ease;
        }

        .nav-items a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -9px;
            width: 0;
            height: 2px;
            border-radius: 10px;
            background: #1f80ff;
            transition: 0.3s ease;
        }

        .nav-items a:hover {
            color: #fff;
        }

        .nav-items a:hover::after {
            width: 100%;
        }

        .right-container {
            margin-left: auto;
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .search-box {
            width: 190px;
            height: 38px;
            padding: 0 15px;

            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: 22px;

            background: rgba(255, 255, 255, 0.07);
            color: #fff;
            outline: none;

            font-size: 13px;
            transition: 0.3s ease;
        }

        .search-box::placeholder {
            color: #858b98;
        }

        .search-box:focus {
            width: 230px;
            border-color: #1f80ff;
            background: rgba(255, 255, 255, 0.1);
        }

        .sub-btn {
            border: none;
            outline: none;
            cursor: pointer;

            padding: 10px 20px;
            border-radius: 22px;

            color: #fff;
            background: linear-gradient(135deg, #147cff, #0054d6);

            font-size: 12px;
            font-weight: 700;

            box-shadow: 0 7px 25px rgba(0, 102, 255, 0.25);
            transition: 0.3s ease;
        }

        .sub-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(0, 102, 255, 0.4);
        }

        .login-link {
            color: #dfe3eb;
            font-size: 13px;
            font-weight: 600;
        }

        .login-link:hover {
            color: #fff;
        }

        /* =========================
           HERO / CAROUSEL
        ========================= */

        .carousel-container {
            position: relative;
            width: 100%;
            min-height: 650px;
            margin-top: 72px;
            overflow: hidden;

            background:
                radial-gradient(
                    circle at 70% 40%,
                    rgba(19, 103, 255, 0.18),
                    transparent 35%
                ),
                #05070b;
        }

        .carousel {
            width: 100%;
            height: 650px;
        }

        /* Existing JS carousel content support */

        .carousel-container::after {
            content: "";
            position: absolute;
            z-index: 5;
            pointer-events: none;

            left: 0;
            right: 0;
            bottom: 0;
            height: 220px;

            background: linear-gradient(
                to bottom,
                transparent,
                #05070b
            );
        }

        /* =========================
           BRAND CARDS
        ========================= */

        .video-card-container {
            position: relative;
            z-index: 20;

            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;

            width: 90%;
            max-width: 1450px;

            margin: -65px auto 60px;
        }

        .video-card {
            position: relative;
            height: 150px;
            overflow: hidden;

            border-radius: 14px;
            border: 1px solid rgba(255, 255, 255, 0.08);

            background: #0c1018;

            cursor: pointer;
            transition: transform 0.35s ease,
                        border-color 0.35s ease,
                        box-shadow 0.35s ease;
        }

        .video-card::after {
            content: "";
            position: absolute;
            inset: 0;

            background: linear-gradient(
                to top,
                rgba(0, 0, 0, 0.7),
                transparent 60%
            );

            z-index: 2;
        }

        .video-card:hover {
            transform: translateY(-8px) scale(1.02);
            border-color: rgba(31, 128, 255, 0.7);

            box-shadow:
                0 15px 40px rgba(0, 0, 0, 0.45),
                0 0 25px rgba(0, 91, 255, 0.15);
        }

        .video-card-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.45s ease;
        }

        .video-card:hover .video-card-image {
            transform: scale(1.08);
        }

        .card-video {
            position: absolute;
            inset: 0;

            width: 100%;
            height: 100%;

            object-fit: cover;
            opacity: 0;

            transition: 0.4s ease;
        }

        .video-card:hover .card-video {
            opacity: 1;
        }

        /* =========================
           SECTION
        ========================= */

        .content-section {
            width: 92%;
            max-width: 1500px;
            margin: 0 auto 65px;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 22px;
        }

        .title {
            position: relative;

            margin: 0;

            color: #fff;
            font-size: 23px;
            font-weight: 700;
            letter-spacing: -0.4px;
        }

        .title::before {
            content: "";
            display: inline-block;

            width: 4px;
            height: 24px;

            margin-right: 10px;
            vertical-align: -4px;

            border-radius: 5px;
            background: linear-gradient(
                #1e88ff,
                #0054d6
            );
        }

        .view-all {
            color: #788397;
            font-size: 12px;
            font-weight: 600;

            transition: 0.3s ease;
        }

        .view-all:hover {
            color: #1f80ff;
        }

        /* =========================
           MOVIE GRID
        ========================= */

        .movies-list {
            width: 100%;
            overflow: visible;
        }

        .card-container {
            display: grid;

            grid-template-columns:
                repeat(5, minmax(0, 1fr));

            gap: 22px;
        }

        .card {
            position: relative;
            min-width: 0;

            overflow: hidden;
            border-radius: 12px;

            background: #0c1018;

            border: 1px solid rgba(255, 255, 255, 0.055);

            cursor: pointer;

            transition:
                transform 0.35s ease,
                box-shadow 0.35s ease,
                border-color 0.35s ease;
        }

        .card:hover {
            transform: translateY(-8px);

            border-color: rgba(31, 128, 255, 0.45);

            box-shadow:
                0 20px 45px rgba(0, 0, 0, 0.5),
                0 0 25px rgba(0, 100, 255, 0.12);
        }

        .card-img {
            display: block;

            width: 100%;
            aspect-ratio: 2 / 3;

            object-fit: cover;

            transition: transform 0.5s ease;
        }

        .card:hover .card-img {
            transform: scale(1.06);
        }

        .card-body {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;

            padding: 35px 14px 14px;

            background: linear-gradient(
                to top,
                rgba(0, 0, 0, 0.96),
                rgba(0, 0, 0, 0.7),
                transparent
            );

            transform: translateY(5px);
            transition: 0.35s ease;
        }

        .card:hover .card-body {
            transform: translateY(0);
        }

        .name {
            margin-bottom: 6px;

            color: #fff;
            font-size: 15px;
            font-weight: 700;
        }

        .des {
            color: #b8bdc7;
            font-size: 10px;
            line-height: 1.5;
            font-weight: 400;

            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        /* =========================
           SCROLLBAR
        ========================= */

        ::-webkit-scrollbar {
            width: 7px;
        }

        ::-webkit-scrollbar-track {
            background: #05070b;
        }

        ::-webkit-scrollbar-thumb {
            background: #222936;
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #1f80ff;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 1200px) {

            .navbar {
                padding: 0 3%;
            }

            .nav-links {
                gap: 20px;
            }

            .search-box {
                width: 150px;
            }

            .card-container {
                grid-template-columns:
                    repeat(4, minmax(0, 1fr));
            }

            .video-card-container {
                grid-template-columns: repeat(5, 1fr);
                gap: 12px;
            }
        }

        @media (max-width: 900px) {

            .navbar {
                height: 65px;
            }

            .logo {
                width: 95px;
                margin-right: 20px;
            }

            .nav-links {
                gap: 14px;
            }

            .nav-items a {
                font-size: 11px;
            }

            .search-box {
                display: none;
            }

            .carousel-container {
                margin-top: 65px;
                min-height: 500px;
            }

            .carousel {
                height: 500px;
            }

            .video-card-container {
                width: 94%;
                grid-template-columns:
                    repeat(3, 1fr);

                margin-top: -40px;
            }

            .video-card {
                height: 120px;
            }

            .video-card:nth-child(4),
            .video-card:nth-child(5) {
                display: none;
            }

            .card-container {
                grid-template-columns:
                    repeat(3, minmax(0, 1fr));

                gap: 16px;
            }
        }

        @media (max-width: 600px) {

            .navbar {
                padding: 0 16px;
            }

            .logo {
                width: 85px;
                margin-right: 15px;
            }

            .nav-links {
                gap: 12px;
            }

            .nav-items a {
                font-size: 9px;
            }

            .nav-items:nth-child(4),
            .nav-items:nth-child(5) {
                display: none;
            }

            .sub-btn {
                padding: 8px 13px;
                font-size: 10px;
            }

            .login-link {
                font-size: 11px;
            }

            .carousel-container {
                min-height: 380px;
            }

            .carousel {
                height: 380px;
            }

            .video-card-container {
                grid-template-columns:
                    repeat(2, 1fr);

                gap: 10px;
                margin-bottom: 45px;
            }

            .video-card {
                height: 105px;
            }

            .video-card:nth-child(3) {
                display: none;
            }

            .content-section {
                width: 94%;
                margin-bottom: 45px;
            }

            .title {
                font-size: 18px;
            }

            .title::before {
                height: 19
