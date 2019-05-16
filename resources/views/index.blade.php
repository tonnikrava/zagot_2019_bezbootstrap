@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')
    {{-- закоментировал пока для удобства
     @foreach ($material  as $materials)

        {!!  $materials->body !!}


    @endforeach --}}


    <section>
        <div class="container-fluid px-0" style="margin-top: -24px;">
            <div class="jumbotron-foto py-5 header_jamberton_foto "><img class="fonimg lazyy"
                                                                        data-src="../images/fon-glavn-vverh.jpg" alt=" "/>
                <div class="vverhotstup">&nbsp;</div>
                <div class="container my-5 py5">
                    <div class="row pt-5 mt-5">
                        <div class="col-sm-12 col-md-7 align-self-center">
                            <h1 class="slimfont display-2 text-white font-weight-light">Заголовок о вашей компании</h1>
                            <p class="lead text-white">Знаем 14 секретов успешной работы ны рынке города Харьков !
                                Креативные решения, современный технологии, профессиональная команда - только самые
                                высокие результаты для наших клиентов !!!</p>
                        </div>
                        <div class="col-12 col-md-5"><img
                                    src="images/steklannie-peregorodki-moskva-vverh-rabochie.png"/></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container mt-5">
                <!-- Three columns of text below the carousel -->
                <div class="row text-center mt-5 justify-content-between">
                    <div class="col-12 col-lg-3 p-2"><img class="krug240" src="../images/study-in-ukraine-krug1.jpg"
                                                          alt="работы"/>
                        <h2 class="my-3 displaytont">Надёжность</h2>
                        <p>Donec sed odio dui. Etiam porta sem malesuada </p>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-12 col-lg-3 p-2"><img class="krug240" src="../images/study-in-ukraine-krug2.jpg"
                                                          alt="работы"/>
                        <h2 class="my-3">Качество</h2>
                        <p>Duis mollis, est non commodo luctus, nisi erat </p>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="col-12 col-lg-3 p-2"><img class="krug240" src="../images/study-in-ukraine-krug3.jpg"
                                                          alt="работы"/>
                        <h2 class="my-3">Доступность</h2>
                        <p>Donec sed odio dui. Cras justo odio, dapibus </p>
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
            </div>
        </div>
        <section>
            <h2 class="d-none">Видеоролик и основные услуги</h2>
            <div class="container-fluid overflow-hidden">
                <div class="container">
                    <hr class="featurette-divider"/>
                    <div class="mt-4">
                        <div class="row">
                            <div class="stativideo col-12 col-md-3 col-lg-5 col-xl-5">
                                <img class="lazyy" data-src="../images/test-photo-3.jpg" alt=" "/>

                            </div>
                            <div class="col-12 col-md-9 col-lg-7 col-xl-7 p-1 align-self-center"
                                 style="overflow: hidden;">
                                <div class="statitext pl-1 pl-xl-5">
                                    <h3 class="gradient-text">Создание сайтов, от лендинг страницы до магазина</h3>
                                    <p>Мы знаем секреты успешного
                                        <mark>создания сайтов Москва</mark>
                                        ! За многие годы успешной работы на рынке веб дизайна, наша студия приобрела
                                        огромнейший опыт, что позволяет нам разрабатывать .
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="featurette-divider"/>
                    <div>
                        <div class="row">
                            <div class="stativideo col-12 col-md-3 col-lg-5 col-xl-5 order-md-2">
                                <img class="lazyy" data-src="../images/test-photo-2.jpg" alt=" "/>
                            </div>
                            <div class="col-12 col-md-9 col-lg-7 col-xl-7 p-1 align-self-center order-md-1"
                                 style="overflow: hidden;">
                                <div class="statitext pl-1 pl-xl-1">
                                    <h3 class="gradient-text">Оптимизация сайта под экраны мобильных устройств</h3>
                                    <p>Немаловажно в нынешнее время
                                        <mark>корректная работа на экранах смартфонов</mark>
                                        и планшетов. Если вам нужно создать сайт с адаптивным дизайном в Москвае
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="featurette-divider"/>
                    <div>
                        <div class="row mb-3">
                            <div class="stativideo col-12 col-md-3 col-lg-5 col-xl-5">
                                <img class="lazyy" data-src="../images/test-photo-1.jpg" alt=" "/>
                            </div>
                            <div class="col-12 col-md-9 col-lg-7 col-xl-7 align-self-center" style="overflow: hidden;">
                                <div class="statitext pl-1 pl-xl-5">
                                    <h3 class="gradient-text">Делаем сайты с эксклюзивным интерфейсом и дизайном</h3>
                                    <p>Невозможно разработать сайт, который будет успешно работать и продавать на
                                        шаблоне!
                                        <mark>Проектирование дружественного интерфейса</mark>
                                        и уникального оформления - задача наших опытных дизайнеров.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <div class="container-fluid px-0">
            <div class="jumbotron-foto py-5 header_jamberton_foto" style="background-color: #f3f3f3;"><img class="fonimg lazyy"
                                                                         data-src="../images/fon-tsifri.jpg" alt=" "/>
                <h2 class="text-center mt-5 display-4" style="color: #37009b;">О нашей компании в цифрах</h2>
                <div class="container mt-4 mb-4 pb-5">
                    <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">
                        <div class="chetbl p-3 mt-3 position-relative">

                            <div class="counter-value"><span class='numscroller' data-min='0' data-max='8'
                                                             data-delay='5' data-increment='1'></span></div>
                            <p>Лет на рынке
                                <br/>создания сайтов</p>
                            <div class="chetbldiv">&nbsp;</div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">

                            <div class="counter-value"><span class='numscroller' data-min='0' data-max='17'
                                                             data-delay='5' data-increment='1'></span></div>
                            <p>Созданных
                                <br/>интернет сайтов</p>
                            <div class="chetbldiv">&nbsp;</div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">

                            <div class="counter-value"><span class='numscroller' data-min='0' data-max='83'
                                                             data-delay='5' data-increment='1'></span></div>
                            <p>Сайтов продвинуто и
                                <br/>SEO оптимизировано</p>
                            <div class="chetbldiv">&nbsp;</div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">

                            <div class="counter-value"><span class='numscroller' data-min='0' data-max='999'
                                                             data-delay='5' data-increment='1'></span></div>
                            <p>Строчек кода
                                <br/>написано</p>
                            <div class="chetbldiv">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="demo">
            <div class="container py-5">
                <h2 class="text-center gradient-text mt-2 display-4">Отзывы клиентов</h2>
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <div id="testimonial-slider" class="owl-carousel">

                            @foreach ($otzivi as $otzivis)


                                <div class="testimonial">
                                    <div class="pic">
                                        <img src="{{Voyager::image($otzivis->photo)}}" alt="">
                                    </div>
                                    <div class="testimonial-content">
                                        <h3 class="testimonial-title">{!! $otzivis->name !!}
                                            <small class="post">{!! $otzivis->prof !!}</small>
                                        </h3>
                                        <p class="description">
                                            {!! $otzivis->textotziv !!}

                                        </p>
                                    </div>
                                </div>



                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    {!! setting('site.aktsia')!!}

@endsection

@section('news')

    <div class="container-fluid bg-light pt-5">
        <h2 class="text-center gradient-text mt-5 display-4">Новости</h2>


        <div class="container mt-5 pb-5">


            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">
                @foreach ($novosti as $novostiss)


                        <a href="news/{!!  $novostiss->slug !!}">
                            <div class="novosti mb-5">
                                <img alt="новости"
                                     src="{{Voyager::image($novostiss->thumbnail('small','foto1'))}}"/>
                                <div class="novosti-body w-100">
                                    <h6 class="font-weight-light">{!!  $novostiss->title !!}</h6>


                                </div>
                                <div class="novosti-date">
                                    <p>{!!  $novostiss->created_at->format('d-m-Y') !!}</p>
                                </div>
                            </div>
                        </a>


                @endforeach

                <a href="news" class="myButton mx-auto">Все новости</a>


            </div>
        </div>
    </div>

@endsection

@section('footer')
    @parent
@endsection