<!DOCTYPE html>
<html lang="ru" prefix="og: http://ogp.me/ns#">
<head>
    @section('mainheader')
        <title>{{setting('site.title')}}</title>
        <meta name="keywords" content="">
        <meta name="description" content="{{setting('site.description')}}">
    @show

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/style2.css') }}" rel="stylesheet" type="text/css">


</head>
<body>

<header>

    @section('navbar')
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <a class="navbar-brand" href="{{Route('home')}}">
                    <img class="logoimg" src="../storage/{{setting('site.logo')}}" height="auto" alt="">
                </a>

                <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
                    {{menu('Glavnoe_menu')}}
                </div>
            </div>
        </nav>
    @show


</header>
<main>
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
                <div class="col-5 p-1" style="background-color:#084d39"></div>
                <div class="col-4 p-1" style="background-color:#03db9c"></div>
                <div class="col-2 p-1" style="background-color:#678cb4"></div>
                <div class="col-1 p-1" style="background-color:#ffd967"></div>
            </div>
            <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15);">
                <img class="lazyy fonimg" data-src="../images/study-in-ukraine-fon-footer.jpg"
                     alt="study in ukraine fon footer">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-9 col-md-6 col-lg-3 ml-5 ml-md-0">
                            <div class="sprite footerlogo mt-5">
                            </div>
                            <ul>
                                <li><a style="color: #084d39;" href="tel:+380639970438">+3 8(063)997-04-38</a><span
                                            style="font-size: 0.7em;font-weight: 400;"> (Whats,Teleg)</span>
                                </li>


                                <li>Ukraine, Kharkov</li>
                                <li>Pushkinskaya str 47</li>

                                <li>aston.ukraine@gmail.com</li>


                            </ul>

                            <div class="p-2" style="height:50px; width: 220px;">
                                {!!setting('site.sots_ikonki')!!}

                            </div>
                        </div>
                        <div class="col-8 col-md-6 col-lg-3 align-self-center ml-5 ml-md-0">

                            <nav class="navbar navbar-text navbar-light"
                                 style="background-color: rgba(0, 0, 0, 0)!important;">


                                <div class="navbar-collapse collapse show" id="navbarSupportedContent"
                                >
                                    {{menu('Glavnoe_menu')}}

                                </div>
                            </nav>
                        </div>
                    </div>

                </div>

            </div>
            <div style="width: 100%; height:30px; background-color: rgb(164, 202, 189);">
                <div class="container">
                    <div style="text-align:left;font-size:0.7em;padding-top: 7px; float: left;letter-spacing: -0.05em;">
                        <a style="text-decoration:none!impontant;color:#5a5a5a!important;"
                           href="https://www.razrabotka-saitov.com" target="_blank">Создание сайтов</a>
                    </div>
                    <p style="text-align: center;font-weight: bold;padding-top: 6px;font-size: 0.8em;color: #084d39;">
                        &copy; {{setting('site.title')}} 2007 - <?php echo date("Y"); ?></p>
                </div>
            </div>
        </div>
        <div class="sprite scroller"></div>
    </footer>
@show

<link href="{{ asset('css/drift.css') }}" rel="stylesheet" type="text/css">
<script src="{{ asset('js/java-griobanij-skript.js') }}"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
<script src="{{ asset('js/menu.js') }}"></script>
<script src="{{ asset('js/drift.js') }}"></script>

<script>
    $(function () {
        $("#accordion").accordion({heightStyle: "content"})
    });
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
    $(function () {
        var $elements = $('.animateBlock.notAnimated');
        var $window = $(window);
        $window.on('scroll', function (e) {
            $elements.each(function (i, elem) {
                if ($(this).hasClass('animated'))
                    return;
                animateMe($(this))
            })
        })
    });

    function animateMe(elem) {
        var winTop = $(window).scrollTop();
        var winBottom = winTop + $(window).height();
        var elemTop = $(elem).offset().top;
        var elemBottom = elemTop + $(elem).height();
        if ((elemBottom <= winBottom) && (elemTop >= winTop)) {
            $(elem).removeClass('notAnimated').addClass('animated')
        }
    }
    ;
    $(".demo01").animatedModal({
        animatedIn: 'lightSpeedIn',
        animatedOut: 'bounceOutDown',
        color: '#d2f0ee'
    });
</script>


</body>
</html>

