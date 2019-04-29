@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')
    <!-- закоментировал пока для удобства -->
    {{-- @foreach ($material  as $materials)

       {!!  $materials->body !!}


     @endforeach--}}



    <section>
        <div class="container-fluid px-0">
            <div class="jumbotron-foto py-5 header_jamberton_foto">
                <img class="lazyy fonimg" alt=" " data-src="images/fon-glavn-vverh.jpg"/>
                <div class="container my-5 py5">
                    <div class="row pt-5 mt-5">
                        <div class="col-sm-12 col-md-7 align-self-center">
                            <h1 class="display-4 text-white"><span class="gradient-text">Создание сайтов</span>в Москве
                                                                                                               для душа
                            </h1>
                            <p class="lead text-white">Знаем 14 секретов успешного создания и продвижения сайта Харьков
                                                       ! Креативные
                                                       решения,
                                                       современный IT технологии, профессиональная команда - только
                                                       самые высокие
                                                       результаты для
                                                       наших клиентов !!!</p>
                        </div>
                        <div class="col-12 col-md-5">
                            <img src="images/steklannie-peregorodki-moskva-vverh-rabochie.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section>

            <div class="container-fluid">
                <div class="container mt-5">

                    <!-- Three columns of text below the carousel -->
                    <div class="row text-center mt-5 justify-content-between">
                        <div class="col-12 col-lg-3 p-2">
                            <img class="krug240 lazyy" alt="работы" src="images/study-in-ukraine-krug1.jpg" style="">
                            <h2 class="my-3">Heading</h2>
                            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id
                               nibh ultricies vehicula ut id elit. </p>

                        </div><!-- /.col-lg-4 -->
                        <div class="col-12 col-lg-3 p-2">
                            <img class="krug240 lazyy" alt="работы" src="images/study-in-ukraine-krug2.jpg" style="">
                            <h2 class="my-3">Heading</h2>
                            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem
                               nec elit. Cras mattis consectetur purus </p>

                        </div><!-- /.col-lg-4 -->
                        <div class="col-12 col-lg-3 p-2">
                            <img class="krug240 lazyy" alt="работы" src="images/study-in-ukraine-krug3.jpg" style="">
                            <h2 class="my-3">Heading</h2>
                            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
                               Vestibulum id ligula porta felis euismod </p>

                        </div><!-- /.col-lg-4 -->
                    </div><!-- /.row -->


                    <!-- START THE FEATURETTES -->

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 align-self-center statitext">
                            <h2 class="featurette-heading mb-4">Создание сайтов,<span class="text-muted">от лендинг страницы до магазина</span>
                            </h2>
                            <p class="lead">Мы знаем 14 секретов успешного создания сайта ! За многие годы успешной
                                            работы на рынке веб дизайна наша веб студия приобрела огромнейший опыт, что
                                            позволяет нам разрабатывать сайты быстро и эффективно.</p>
                        </div>
                        <div class="col-md-5">
                            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto"
                                 alt="500x500" style="width: 500px; height: 500px;"
                                 src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22500%22%20height%3D%22500%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20500%20500%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16a4eb78d1d%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A25pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16a4eb78d1d%22%3E%3Crect%20width%3D%22500%22%20height%3D%22500%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22185.125%22%20y%3D%22261.1%22%3E500x500%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                 data-holder-rendered="true">
                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 order-md-2 align-self-center statitext">
                            <h2 class="featurette-heading mb-4">Оптимизация сайта <span class="text-muted">под экраны мобильных устройств</span>
                            </h2>
                            <p class="lead">Немаловажно в нынешнее время корректная работа на экранах смартфонов и
                                            планшетов. Если вам нужно создать сайт с адаптивным дизайном в Харькове,
                                            наши специалисты, используя самые передовые технологии.</p>
                        </div>
                        <div class="col-md-5 order-md-1">
                            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto"
                                 alt="500x500"
                                 src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22500%22%20height%3D%22500%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20500%20500%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16a4eb78d1e%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A25pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16a4eb78d1e%22%3E%3Crect%20width%3D%22500%22%20height%3D%22500%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22185.125%22%20y%3D%22261.1%22%3E500x500%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                 data-holder-rendered="true" style="width: 500px; height: 500px;">
                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 align-self-center statitext">
                            <h2 class="featurette-heading mb-4">Делаем сайты с эксклюзивным интерфейсом <span
                                        class="text-muted">и дизайном</span></h2>
                            <p class="lead">Невозможно разработать сайт, который будет успешно работать и продавать на
                                            шаблоне! Проектирование дружественного интерфейса и уникального оформления -
                                            задача наших опытных дизайнеров. </p>
                        </div>
                        <div class="col-md-5">
                            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto"
                                 alt="500x500"
                                 src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22500%22%20height%3D%22500%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20500%20500%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16a4eb78d1f%20text%20%7B%20fill%3A%23AAAAAA%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A25pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16a4eb78d1f%22%3E%3Crect%20width%3D%22500%22%20height%3D%22500%22%20fill%3D%22%23EEEEEE%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22185.125%22%20y%3D%22261.1%22%3E500x500%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                 data-holder-rendered="true" style="width: 500px; height: 500px;">
                        </div>
                    </div>


                    <!-- /END THE FEATURETTES -->

                </div>
            </div>

        </section>


        <div class="jumbotron-video" style="background-color: rgba(238, 238, 238, 0.19);">
            <video muted="" autoplay="" loop="" class="lazy-direktor">
                <source src="video/video-fon-22.webm" type="video/webm">
                <source src="video/video-fon-2.mp4" type="video/mp4">
            </video>
            <div class="container-fluid overflow-hidden pt-2 pb-2 pt-md-5 pb-md-5">
                <h2 class="text-uppercase text-center gradient-text-h2-2 mt-5">О нашей компании в цифрах</h2>

                <div class="container mt-4 mb-4 pb-5">
                    <div class="d-flex flex-wrap justify-content-center justify-content-sm-between" id="counter">
                        <div class="chetbl p-3 mt-3 position-relative">
                            <div class="sprite chetbl-odin-img mt-2"></div>
                            <div class="counter-value" data-count="8">8</div>
                            <p>Лет на рынке<br>создания сайтов </p>
                            <div class="chetbldiv"></div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">
                            <div class="sprite chetbl-dva-img mt-2"></div>
                            <div class="counter-value" data-count="184">184</div>
                            <p>Созданных<br>интернет сайтов</p>
                            <div class="chetbldiv"></div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">
                            <div class="sprite chetbl-tri-img mt-2"></div>
                            <div class="counter-value" data-count="270">270</div>
                            <p>Сайтов продвинуто и<br>SEO оптимизировано</p>
                            <div class="chetbldiv"></div>
                        </div>
                        <div class="chetbl p-3 mt-3 position-relative">
                            <div class="sprite chetbl-chet-img mt-2"></div>
                            <div class="counter-value" data-count="84862046">84862046</div>
                            <p>Строчек кода<br>написано</p>
                            <div class="chetbldiv"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container mt-5">
                <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">Free</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$0
                                <small class="text-muted">/ mo</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>10 users included</li>
                                <li>2 GB of storage</li>
                                <li>Email support</li>
                                <li>Help center access</li>
                            </ul>
                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Sign up for free
                            </button>
                        </div>
                    </div>
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">Pro</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$15
                                <small class="text-muted">/ mo</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>20 users included</li>
                                <li>10 GB of storage</li>
                                <li>Priority email support</li>
                                <li>Help center access</li>
                            </ul>
                            <button type="button" class="btn btn-lg btn-block btn-primary">Get started</button>
                        </div>
                    </div>
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">Enterprise</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">$29
                                <small class="text-muted">/ mo</small>
                            </h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>30 users included</li>
                                <li>15 GB of storage</li>
                                <li>Phone and email support</li>
                                <li>Help center access</li>
                            </ul>
                            <button type="button" class="btn btn-lg btn-block btn-primary">Contact us</button>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="container-fluid px-0">
            <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px;"><img
                        class="lazyy fonimg" alt="study in Ukranr background" data-src="images/fon-aktsia.jpg"/>
                <div class="container">
                    <div class="zagolovokform" style="background-color: rgba(255, 255, 255, 0.6196078431372549);">
                        <div>
                            <h2 style="color: #009c48 !important; text-align: center; margin-top: 12px;">Ноt deal</h2>
                            <div style="margin-top: 29px; color: #545454; font-size: 15px;">
                                <p>Fill out the form now and get a discount on paperwork for study in Ukraine from our
                                   company</p>
                            </div>
                            <div class="hotdealbootonn">
                                <div class="hotdealbooton">fill in the form</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection

 @section('news')

            <div class="container-fluid bg-light pt-5">


                <div class="container mt-5">


                    <div class="row">
                        @foreach ($novosti as $novostiss)

                            <div class="col-md-3">
                                <a href="news/{!!  $novostiss->slug !!}">
                                    <div class="card mb-4">
                                        <img class="w-100" alt="новости"
                                             src="{{Voyager::image($novostiss->thumbnail('cropped','foto1'))}}"/>
                                        <div class="card-body">
                                            <h6 class="mt-3">{!!  $novostiss->title !!}</h6>


                                        </div>
                                        <div class="card-date">
                                            <p>{!!  $novostiss->created_at->format('d-m-Y') !!}</p></div>
                                    </div>
                                </a>
                            </div>

                        @endforeach


                    </div>
                </div>
            </div>

    @endsection

@section('footer')
    @parent
@endsection