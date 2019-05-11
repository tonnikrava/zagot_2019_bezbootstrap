<!DOCTYPE html>
<html lang="ru">
<head>
    @section('mainheader')<title>{{setting('site.title')}}</title>
    <meta name="keywords" content="">
    <meta name="description" content="{{setting('site.description')}}">
    @show
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="icon" type="image/png" sizes="32x32" href="../storage/{{setting('site.favicon')}}">

    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/style2.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/stelarnav.css') }}" rel="stylesheet" type="text/css">
</head>
<body>

<header class="navbar">
    <div class="container-fluid">
        <div class="container">


            <div class="cd-logo"><a href="{{Route('home')}}">
                    <img class="logoimg" src="../storage/{{setting('site.logo')}}" height="auto" alt="">
                </a></div>

            @section('navbar')
                <nav class="cd-main-nav-wrapper">
                    <ul class="cd-main-nav">
                        {{menu('Glavnoe_menu')}}
                    </ul> <!-- .cd-main-nav -->
                </nav> <!-- .cd-main-nav-wrapper -->

                <a href="#0" class="cd-nav-trigger"><span></span></a>

            @show
        </div>
    </div>


</header>


<main class="cd-main-content">

    <article>
        <h2 class="semantics_info">Основной контент на сайте</h2>

        @section('header')

        @show

        @yield('content')

    </article>

</main>

@section('news')



@show
@section('footer')
    <footer>
        <div class="container-fluid px-0">

            <h2 class="semantics_info">Футер сайта</h2>
            <div class="d-flex flex-row">
                <div class="col-5 p-1" style="background-color:#025cac"></div>
                <div class="col-4 p-1" style="background-color:#678cb4"></div>
                <div class="col-2 p-1" style="background-color:#a1c3e7"></div>
                <div class="col-1 p-1" style="background-color:#d7ebff"></div>
            </div>
            <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15);">
                <img class="lazyy fonimg" style="opacity: 0.95;" data-src="../images/fon-footer.jpg"
                     alt="study in ukraine fon footer">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-9 col-md-6 col-lg-3 ml-5 ml-md-0">
                            <div class="sprite footerlogo mt-5">
                            </div>
                            <ul>
                                <li><a style="color: #6b6b6b;" href="tel:+3806300000">+3 8(063)000-00-00</a><span
                                            style="font-size: 0.7em;font-weight: 400;"> (Whats,Teleg)</span>
                                </li>


                                <li>Ukraine, Kharkov</li>
                                <li>Pushkinskaya str 47</li>

                                <li>vashapochta@gmail.com</li>


                            </ul>


                        </div>
                        <div class="col-8 col-md-6 col-lg-3 align-self-center ml-5 ml-md-0">
                            <div class="p-2" style="height:50px; width: 220px;">
                                {!!setting('site.sots_ikonki')!!}

                            </div>

                        </div>
                    </div>

                </div>

            </div>


            <div id="footer__niz__line">
                <div class="container">
                   {{-- <a href="https://www.razrabotka-saitov.com" target="_blank">Создание сайтов</a>--}}
                    <p>&copy; {{setting('site.title')}} 2007 - <?php echo date("Y"); ?></p>

                </div>
            </div>
        </div>
        <div class="sprite scroller"></div>
    </footer>
@show

<link href="{{ asset('css/style2.css') }}" rel="stylesheet" type="text/css">
<link href="{{ asset('css/otzivi.css') }}" rel="stylesheet" type="text/css">
<script src="{{ asset('js/java-griobanij-skript.js') }}"></script>

<script src="{{ asset('js/menu.js') }}"></script>
<script src="{{ asset('js/stellarnavmenu.js') }}"></script>
<script src="{{ asset('js/imgzoom.js') }}"></script>
<script src="{{ asset('js/otzivi.js') }}"></script>
<script src="{{ asset('js/counter.js') }}"></script>


<script>

    $(function () {
        $('.lazyy').lazy({effect: "fadeIn", effectTime: 1000, threshold: 0})
    });
    $(function () {
        $('.lazyyy').lazy({combined: true, delay: 20000})
    });
    $(function () {
        $('.lazyyyy').lazy({delay: 3000})
    });
    $(function () {
        $('.lazy-direktor').lazy({effect: "fadeIn", effectTime: 500, delay: 1500})
    });
    $(function () {
        $('.lazy').lazy({combined: true, delay: 4000})
    });


    $(document).ready(function () { //коментарии клиентов
        $("#testimonial-slider").owlCarousel({
            items: 2,
            itemsDesktop: [1000, 2],
            itemsDesktopSmall: [979, 2],
            itemsTablet: [767, 1],
            pagination: true,
            autoPlay: true
        });
    });


</script>

</body>
</html>

