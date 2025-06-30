<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/1/2025
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>SIEUTHICODE.NET - Chuyên thiết kế website Bán Code, Mã , chuẩn SEO, chuyên nghiệp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="SIEUTHICODE.NET - Chuyên thiết kế website Bán Code, Mã , chuẩn SEO, chuyên nghiệp">
    <meta name="keywords" content="host giá rẻ, hosting vn, hosting việt nam, mua host, mua hosting, bán hosting, bán host,sunihost,sieuthicode,sieuthicode.vn,sieuthicode.net, dịch vụ tạo web, bán code, mua code uy tín, sieuthicode.net, ytb sieuthicode, tạo website, hướng dẫn làm website, bán clone, api thanh toán, api sieuthicode, api.sieuthicode.net, it, làm web, làm shop acc">
    <meta name="description" content="Dịch vụ thiết kế website theo yêu cầu, mua bán mã nguồn, dịch vụ uy tín, hỗ trợ nhiệt tình. Đội ngũ chăm sóc khách hàng 24/24">

    <meta property="og:type" content="website">
    <meta property="og:url" content="https://sieuthicode.net">
    <meta property="og:title" content="SIEUTHICODE.NET - Chuyên thiết kế website Bán Code, Mã , chuẩn SEO, chuyên nghiệp">
    <meta property="og:description" content="Dịch vụ thiết kế website theo yêu cầu, mua bán mã nguồn, dịch vụ uy tín, hỗ trợ nhiệt tình. Đội ngũ chăm sóc khách hàng 24/24">
    <meta property="og:image" content="https://sieuthicode.net/upload/theme/CQM6ITP5NU.png">

    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="https://sieuthicode.net">
    <meta property="twitter:title" content="SIEUTHICODE.NET - Chuyên thiết kế website Bán Code, Mã , chuẩn SEO, chuyên nghiệp">
    <meta property="twitter:description" content="Dịch vụ thiết kế website theo yêu cầu, mua bán mã nguồn, dịch vụ uy tín, hỗ trợ nhiệt tình. Đội ngũ chăm sóc khách hàng 24/24">
    <meta property="twitter:image" content="https://sieuthicode.net/upload/theme/CQM6ITP5NU.png">

    <meta name="author" content="sieuthicode.vn">
    <link rel="icon" href="https://sieuthicode.net/upload/theme/QCT87R.png" type="image/x-icon" />
    <script>
        var csrf_token = "3Nbkmh7wqrDfcm7xPcYCoiADmSfyVbzynox1vYjwi0E="
    </script>

    <!-- GLightBox -->
    <link rel="stylesheet" href="https://sieuthicode.net/assets/css/glightbox.min.css" />
    <!-- Aos -->
    <link rel="stylesheet" href="https://sieuthicode.net/assets/css/aos.css" />
    <!-- Nice Select -->
    <link rel="stylesheet" href="https://sieuthicode.net/assets/css/nice-select.css" />
    <!-- Quill CSS -->
    <link href="https://sieuthicode.net/assets/css/quill.core.css" rel="stylesheet" />
    <link href="https://sieuthicode.net/assets/css/quill.snow.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://sieuthicode.net/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font-awesome CSS -->
    <link href="https://sieuthicode.net/assets/css/font-awesome-all.min.css" rel="stylesheet" />
    <link href="https://sieuthicode.net/assets/css/fontawesome.css" rel="stylesheet" />
    <!-- Swiper CSS -->
    <link href="https://sieuthicode.net/assets/css/swiper-bundle.min.css" rel="stylesheet" />
    <!-- Main CSS -->
    <link href="https://sieuthicode.net/assets/css/style.css?v=1748771442" rel="stylesheet" />
    <link href="https://sieuthicode.net/assets/css/job_post.css" rel="stylesheet" />
    <!-- Responsive CSS -->
    <link href="https://sieuthicode.net/assets/css/resposive.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://sieuthicode.net/assets/css/styles.css?v=1748771442">
    <!-- Simple Notify CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
    <!-- Simple Notify JS -->
    <script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
    <script src="https://sieuthicode.net/assets/js/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/lazyload@2.0.0-rc.2/lazyload.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.1.0/css/boxicons.min.css">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/notiflix@3/dist/notiflix-3.2.7.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/notiflix@3/dist/notiflix-3.2.7.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Signika:wght@600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@600;700;800&display=swap" rel="stylesheet">
    <!-- Font Awesome 6 Free CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">




    <style>
        * {
            font-family: 'Signika', sans-serif;
            letter-spacing: 0.5px;
        }

        .pagination {
            display: inline-block;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
            border-radius: 50%;
            border: 1px solid #B4B4B4;
            margin: 0 4px;
            font-size: 18px;

        }

        .pagination a:hover {
            background-color: #ddd;
        }

        .pagination a.active {
            background-color: #ff6900;
            color: white;
            border: 1px solid #ff6900;
        }

        .pagination a:first-child,
        .pagination a:last-child {
            border-radius: 50%;
        }

        .shop-widget-btn {
            width: 100%;
            font-size: 15px;
            padding: 10px 20px;
            border-radius: 8px;
            color: #39404a;
            background: #e8e8e8;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            transition: all linear .3s;
            -webkit-transition: all linear .3s;
            -moz-transition: all linear .3s;
            -ms-transition: all linear .3s;
            -o-transition: all linear .3s
        }

        .shop-widget-btn:hover {
            color: #fff;
            background: #ff6900
        }

        .shop-widget-btn i {
            margin-right: 8px;
            margin-top: -1px
        }

        .service4-box {
            background-color: #ffffff;
            padding: 0px 32px 32px 32px;
            border-radius: 8px;
            transition: all 0.4s;
        }

        .service4-box .icon {
            background-color: #EDF2FB;
            height: 90px;
            width: 90px;
            text-align: center;
            line-height: 90px;
            border-radius: 50%;
            transform: translateY(-45px);
        }

        .service4-box .icon img {
            transition: all 0.4s;
            width: 50px;
        }

        .service4-box .heading4 {
            margin-top: -20px;
        }

        .service4-box:hover {
            transition: all 0.4s;
            transform: translateY(-10px);
        }

        .service4-box:hover .icon img {
            transition: all 0.4s;
            transform: rotateY(180deg);
        }


        .mt-70 {
            margin-top: 70px;
        }

        .mt-80 {
            margin-top: 80px;
        }

        .btn_theme9 {
            color: var(--vtc-text-title4);
            background: transparent;
            position: relative;
            overflow: hidden;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            padding: 16px 24px;
            text-transform: uppercase;
            min-width: -moz-max-content;
            min-width: max-content;
            transition: all 0.65s ease-in-out;
            z-index: 4;
            width: 100%;
            line-height: 18px;
            border-radius: 111px;
            border: none;
        }

        .btn_theme9 span {
            position: absolute;
            display: block;
            width: 0;
            height: 0;
            border-radius: 50%;
            transition: width 0.6s ease-in-out, height 0.6s ease-in-out;
            transform: translate(-50%, -50%);
            z-index: -1;
        }

        .btn_theme9:hover {
            transition: all 0.6s;
        }

        .btn_theme9:hover span,
        .btn_theme9:focus span {
            width: 225%;
            height: 220px;
        }

        .btn_theme_active9 {
            color: #030619;
            position: relative;
            z-index: 0;

            line-height: 14px;
        }

        .btn_theme_active9 span {
            background-color: #ffffff;
            background: linear-gradient(90deg, #202CD3 1.1%, #0778F9 100%);
        }

        .btn_theme_active9::after {
            content: "";
            position: absolute;
            display: flex;
            align-items: center;
            width: 100%;
            height: 100%;
            background: linear-gradient(268deg, rgba(64, 139, 255, 0.1) 0.24%, rgba(10, 24, 161, 0.1) 98.24%);
        ;
            z-index: -3;
            border-radius: 9px;
        }

        .btn_theme_active9:hover,
        .btn_theme_active9:focus {
            color: #ffffff;
        }

        .heading4-w h2 {
            color: #ffffff;
            font-size: 44px;
            font-style: normal;
            line-height: 52px
        }

        .heading4-w span.sub-title {
            display: inline-block;
            color: #ffffff;
            font-size: 18px;
            font-style: normal;
            line-height: 18px;
            text-transform: uppercase;
            padding: 10px 14px 6px 16px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 111px;
            margin-bottom: 16px;
        }

        .btn_theme8 {
            color: #fff;
            background: transparent;
            position: relative;
            overflow: hidden;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            padding: 15px 22px;
            text-transform: uppercase;
            min-width: -moz-max-content;
            min-width: max-content;
            transition: all 0.65s ease-in-out;
            z-index: 4;
            font-size: 15px;
            line-height: 10px;
            border-radius: 111px;
            border: none;
        }

        .btn_theme8 span {
            position: absolute;
            display: block;
            width: 0;
            height: 0;
            border-radius: 50%;
            transition: width 0.6s ease-in-out, height 0.6s ease-in-out;
            transform: translate(-50%, -50%);
            z-index: -1;
        }

        .btn_theme8:hover {
            transform: translateY(-5px);
            transition: all 0.6s;
        }

        .btn_theme8:hover span,
        .btn_theme8:focus span {
            width: 225%;
            height: 220px;
        }

        .btn_theme_active8 {
            color: #fff;
            position: relative;
            z-index: 0;
            font-size: 15px;
            line-height: 10px;
        }

        .btn_theme_active8 span {
            background-color: #fff;
            background: linear-gradient(90deg, #202CD3 1.1%, #0778F9 100%);
        }

        .btn_theme_active8::after {
            content: "";
            position: absolute;
            display: flex;
            align-items: center;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, #0778F9 1.1%, #202CD3 100%);
            z-index: -3;
            border-radius: 9px;
        }

        .btn_theme_active8:hover,
        .btn_theme_active8:focus {
            color: #fff;
        }

        .heading4 p {
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        @media (max-width: 768px) {
            .hero{
                margin-top: 0px !important;
            }
            .btn_theme_active9 {
                line-height: 5px;
            }

            .heading4 h3 {
                display: -webkit-box;
                -webkit-line-clamp: 1;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                font-size: 1.2rem;
            }

            .service4-box .icon {
                background-color: #EDF2FB;
                height: 60px;
                width: 60px;
                text-align: center;
                line-height: 60px;
                border-radius: 50%;
                transform: translateY(-35px);
            }

            .service4-box .icon img {
                width: 40px;
            }

            .heading4 p {
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        }
        .table td,
        .table th {
            vertical-align: middle;
            white-space: nowrap !important;
        }

        /* Custom Checkbox Styling */
        .custom-checkbox {
            position: relative;
            display: inline-block;
            width: 18px;
            height: 13px;
            vertical-align: middle;
        }

        .custom-checkbox input[type="checkbox"] {
            opacity: 0;
            width: 18px;
            height: 18px;
            position: absolute;
            cursor: pointer;
            z-index: 1;
        }

        .custom-checkbox .checkbox-visual {
            position: absolute;
            top: 0;
            left: 0;
            width: 18px;
            height: 18px;
            background-color: #fff;
            border: 2px solid #6c757d;
            /* Bootstrap secondary */
            border-radius: 3px;
            transition: all 0.2s ease;
        }

        .custom-checkbox input[type="checkbox"]:checked+.checkbox-visual {
            background-color: #0d6efd;
            /* Bootstrap primary */
            border-color: #0d6efd;
        }

        .custom-checkbox input[type="checkbox"]:checked+.checkbox-visual::after {
            content: '\2713';
            /* Checkmark */
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #fff;
            font-size: 12px;
            font-weight: bold;
        }

        .custom-checkbox input[type="checkbox"]:hover+.checkbox-visual,
        .custom-checkbox input[type="checkbox"]:focus+.checkbox-visual {
            border-color: #0d6efd;
            box-shadow: 0 0 0 3px rgba(13, 110, 253, 0.2);
            /* Bootstrap primary with opacity */
        }

        .custom-checkbox input[type="checkbox"]:focus+.checkbox-visual {
            outline: none;
        }

        /* Center checkboxes in cells */
        .table th.checkbox-cell,
        .table td.checkbox-cell {
            text-align: center;
            padding: 0.5rem;
        }
        .bg-primary {
            background-color: linear-gradient(90deg, #0778F9 1.1%, #202CD3 100%) !important;
        }

        /* Fixed Bottom Navigation */
        .fixed-bottom-nav {
            display: none;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #fff;
            /* White background */
            border-top: 1px solid #ddd;
            /* Light border on top */
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1);
            /* Subtle shadow for elevation */
            z-index: 1000;
            /* Ensure it stays above other content */
        }

        /* Navigation list */
        .nav-list {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 10px 0;
            margin: 0;
            list-style: none;
        }

        /* Navigation item */
        .nav-list .nav-item {
            flex: 1;
            text-align: center;
        }

        /* Navigation link */
        .nav-list .nav-link {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            color: #333;
            /* Dark text color */
            font-size: 18px;
            transition: color 0.3s ease;
        }

        /* Navigation icon */
        .nav-list .nav-link .nav-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            /* Slightly larger than header icons for better touch target */
            height: 40px;
            border-radius: 50%;
            /* Circular shape */
            /* border: 1px solid #007bff; */
            /* Match header border */
            box-shadow: 0 2px 3px rgba(4, 4, 7, 0.2);
            /* Match header shadow */
            background-color: #fff;
            /* White background */
            margin-bottom: 5px;
            /* Space between icon and label */
        }

        /* Icon inside nav-icon */
        .nav-list .nav-link .nav-icon i {
            font-size: 20px;

        }

        /* Navigation label */
        .nav-list .nav-link .nav-label {
            font-size: 12px;
            /* Smaller font for label */
            font-weight: 500;
        }

        .nav-link {
            border-radius: 0.375rem;
            font-weight: 500;
        }

        .nav-link.active {
            background-color: rgb(162, 204, 252);
        }

        @media (max-width: 576px) {
            .nav-list .nav-link .nav-label {
                font-size: 10px;
                /* Smaller font on mobile */
            }

            .nav-list .nav-link .nav-icon {
                width: 36px;
                /* Slightly smaller on mobile */
                height: 36px;
            }

            .nav-list .nav-link .nav-icon i {
                font-size: 16px;
                /* Adjust icon size on mobile */
            }

        }

        @media (max-width: 768px) {

            /* Show on screens ≤ 768px */
            .fixed-bottom-nav {
                display: block;
            }

            .page {
                padding-bottom: 70px;
                /* Space for fixed nav height */
            }

            .scrollToTop {
                inset-block-end: 100px !important;
            }

            .title-social {
                display: none;
            }

        }

        .custom-popover {
            position: absolute;
            bottom: 50px;
            left: 50%;
            transform: translateX(-50%);
            padding: 6px 12px;
            background: #333;
            color: #fff;
            font-size: 14px;
            border-radius: 6px;
            white-space: nowrap;
            display: none;
            z-index: 1000;
        }

        .nav-orders:hover .custom-popover,
        .nav-orders:focus-within .custom-popover {
            display: block;
        }

        .popover-links {
            min-width: 280px;
        }

        .popover {
            max-width: 360px !important;
            /* hoặc 100% nếu muốn full-width */
        }

        .popover-box {
            background-color: #f0f2f4;
            padding: 10px;
            border-radius: 6px;
            text-align: left;
        }

        .popover-box a {
            display: flex;
            align-items: center;
            font-size: 14px;
            text-decoration: none;
            color: #333;
            transition: background-color 0.2s ease;
            padding: 6px 8px;
            border-radius: 4px;
        }

        .popover-box a i {
            font-size: 16px;
            color: #0d6efd;
        }

        .popover-box a:hover {
            background-color: #e2e6ea;
            color: #0d6efd;
        }
        .bg-cover {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }
    </style>
    <script>
        function showMessage(message, type) {
            const commonOptions = {
                effect: 'fade',
                speed: 300,
                customClass: null,
                customIcon: null,
                showIcon: true,
                showCloseButton: true,
                autoclose: true,
                autotimeout: 3000,
                gap: 20,
                distance: 20,
                type: 'outline',
                position: 'right top'
            };

            const options = {
                success: {
                    status: 'success',
                    title: 'Thành công!',
                    text: message,
                },
                error: {
                    status: 'error',
                    title: 'Thất bại!',
                    text: message,
                }
            };
            new Notify(Object.assign({}, commonOptions, options[type]));
        }
    </script>

</head>
