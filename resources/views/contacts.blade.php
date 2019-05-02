@extends('default.maintemplate')

@section('mainheader')
    <title>Категориия продукции</title>
    <meta name="keywords" content="контакты компании">
    <meta name="description" content="Страница с нашими контактами">
@endsection

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')




    <div id="contmap">

        <div id="contmapfon"></div>

        {!! setting('site.google_map')!!}



        <div id="conttel">

            <ul>

                <li>+38 (095) 204-57-58</li>
                <li>+38 (093) 574-45-25</li>
                <li>Украина, Харьков</li>
                <li>Полтавский шлях 31</li><br>



                <li>mail@razrabotka-saitov.com</li>
                <li>SKYPE: tonnikrava</li>
                <li>VIBER: (095) 204-57-58</li>
                <li>WHATS: (095) 204-57-58</li>
            </ul>


        </div>
    </div>









            <div class="container-fluid px-0" id="counter">
                <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px">
                    <img class="lazyy fonimg" data-src="../images/fon-aktsia.jpg" alt="study in Ukranr background">
                    <div class="container">
                        <div class="zagolovokform" style="background-color: rgba(255, 255, 255, 0.6196078431372549);">
                            <div class="h1block">
                                <h2 style="color: #009c48 !important; text-align: center; margin-top: 12px;"> Ноt
                                    deal </h2>
                                <div style="margin-top: 29px; color: #545454; font-size: 15px;">
                                    <p>Fill out the form now and get a discount on paperwork for study in Ukraine
                                        from our company</p>
                                </div>
                                <div class="hotdealbootonn">
                                    <a href="../forma">
                                        <div class="hotdealbooton">fill in the form
                                        </div>
                                    </a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
@endsection



@section('footer')
    @parent
@endsection