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
                    <h2 class="text-uppercase text-white text-center" style="margin-top:15%;">Новости нашей компании</h2>
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














    <div class="container-fluid px-0 py-5" style="background-color: #f7f7f7">
        <h2 class="text-uppercase text-center gradient-text-h2 mt-5">choose a profession</h2>
        <p class="p-h2-fon" style="color: rgba(209, 209, 209, 0.34)!important;">choose a profession</p>

        <div class="container my-4">

            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">
                <div class="proff position-relative">
                    <img alt="study in ukraine vuz"
                         src="../images/study-in-ukraine-ingenir.jpg"
                         style="display: inline;">

                    <p>Engineering courses</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>
                <div class="proff position-relative">
                    <img alt="study in ukraine vuz"
                         src="../images/study-in-ukraine-doctor.jpg"
                         style="display: inline;">

                    <p>Medical courses</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>
                <div class="proff position-relative">
                    <img
                            src="../images/study-in-ukraine-buissnes.jpg"
                            style="display: inline;">

                    <p>Business/Economics/Tourism Management</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>

            </div>


        </div>
    </div>

    <div class="container-fluid px-0" id="counter">
        <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px">
            <img class="lazyy fonimg" data-src="images/fon-aktsia.jpg" alt="study in Ukranr background">
            <div class="container">
                <div class="zagolovokform" style="background-color: rgba(255, 255, 255, 0.6196078431372549);">
                    <div class="h1block">
                        <h2 style="color: #009c48 !important; text-align: center; margin-top: 12px;"> Ноt deal </h2>
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

@endsection



@section('footer')
    @parent
@endsection