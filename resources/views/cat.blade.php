@extends('default.maintemplate')

@section('mainheader')
    <title>Категориия продукции</title>
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
                <img class="lazyy fonimg" alt=" " data-src="@foreach ($catname as $catnames){{Voyager::image($catnames->thumbnail('cropped','img'))}}@endforeach"/>
                <div class="container my-5 py5">
                    <h1 class="text-uppercase text-white text-center" style="margin-top:10%;margin-bottom:4%;">
                        Категория @foreach ($catname as $catnames) {!!  $catnames->name!!}  @endforeach</h1>
                    @foreach ($catname as $catnames) {!!$catnames->discription!!}  @endforeach
            </div>
            </div>
        </div>
        <section>


            <div class="container-fluid bg-light pt-5">


                <div class="container mt-5">


                    <div class="row">
                        @foreach ($cat as $cats)

                            <div class="col-md-3">
                                <a href="{!!  $cats->category_id !!}/{!!  $cats->slug !!}">
                                    <div class="card mb-4">
                                        <img class="w-100" alt="новости"
                                             src="{{Voyager::image($cats->thumbnail('cropped','image'))}}"/>
                                        <div class="card-body">
                                            <h6 class="mt-3">{!!  $cats->title !!}</h6>


                                        </div>
                                        <div class="card-date">
                                            <p>{!!  $cats->created_at->format('d-m-Y') !!}</p></div>
                                    </div>
                                </a>
                            </div>

                        @endforeach


                    </div>
                </div>
            </div>


            <div class="container-fluid px-0" id="counter">
                <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px">
                    <img class="lazyy fonimg" data-src="images/fon-aktsia.jpg" alt="study in Ukranr background">
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

@endsection



@section('footer')
    @parent
@endsection