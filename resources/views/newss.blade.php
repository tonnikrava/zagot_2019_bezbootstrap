@extends('default.maintemplate')

@section('mainheader')
    <title>Новости нашей компании око</title>
    <meta name="keywords" content="">
    <meta name="description" content="око новости">
@endsection

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')




    <section>
        <div class="container-fluid px-0">
            <div class="jumbotron-foto py-5 header_jamberton_foto">
                <img class="lazyy fonimg" alt=" " data-src="images/fon-news-vverh.jpg"/>
                <div class="container my-5 py5">
                    <h2 class="text-uppercase text-white text-center" style="margin-top:15%;">Новости нашей
                        компании</h2>
                </div>
            </div>
        </div>
        <section>


            <div class="container-fluid bg-light pt-5">


                <div class="container mt-5">


                    <div class="row">
                        @foreach ($novostis as $novostiss)

                            <div class="col-md-3">
                                <a href="news/{!!  $novostiss->slug !!}">
                                    <div class="novosti mb-4">
                                        <img alt="новости"
                                             src="{{Voyager::image($novostiss->thumbnail('small','foto1'))}}"/>
                                        <div class="novosti-body w-100">
                                            <h6>{!!  $novostiss->title !!}</h6>


                                        </div>
                                        <div class="novosti-date">
                                            <p>{!!  $novostiss->created_at->format('d-m-Y') !!}</p>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        @endforeach


                    </div>
                </div>
            </div>


            <div class="container-fluid px-0">
                <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px;">
                    <img class="lazyy fonimg" alt="study in Ukranr background" data-src="images/fon-aktsia.jpg"/>
                    <div class="container">
                        <div class="zagolovokform" style="background-color: rgba(255, 255, 255, 0.6196078431372549);">
                            <div>
                                <h2 class="text-center gradient-text mt-2 display-4">Акция</h2>

                                <div style="margin-top: 29px; color: #545454; font-size: 15px;">
                                    <p>Fill out the form now and get a discount on paperwork for study in Ukraine from
                                        our
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



@section('footer')
    @parent
@endsection