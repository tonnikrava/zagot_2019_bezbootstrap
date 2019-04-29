@extends('default.maintemplate')

@section('mainheader')
    <title>@foreach ($novosti  as $novostis){!!  $novostis->title !!}@endforeach</title>
    <meta name="keywords"
          content="Ukrainian universities @foreach ($novosti  as $novostis){!!  $novostis->title !!}@endforeach">
    <meta name="description"
          content="We present to your attention @foreach ($novosti  as $novostis){!!  $novostis->title !!}@endforeach">
@endsection

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')


    <section>
        <div class="container-fluid px-0" id="counter">
            <nav aria-label="breadcrumb" style="background-color: #deffeb;">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">HOME</a></li>
                        <li class="breadcrumb-item"><a href="../university">UNIVERSITIES OF UKRAINE</a></li>
                        <li class="breadcrumb-item active" aria-current="page">@foreach ($novosti  as $novostis)
                                {!!  $novostis->title !!}
                            @endforeach</li>
                    </ol>
                </div>
            </nav>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 p-3 col-lg-9">
                        @foreach ($novosti  as $novostis)
                            <h1 class="text-uppercase gradient-text-h2 mt-3">{!!  $novostis->title !!}</h1>
                            <img class="mt-3 w-100" alt="новости"
                                 src="{{Voyager::image($novostis->thumbnail('medium','foto1'))}}"/>
                            {!!  $novostis->body !!}
                            <img class="mt-3 w-100" alt="новости"
                                 src="{{Voyager::image($novostis->thumbnail('medium', 'foto2'))}}"/>
                            <img class="mt-3 w-100" alt="новости"
                                 src="{{Voyager::image($novostis->thumbnail('medium', 'foto3'))}}"/>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>



    <div class="container-fluid px-0">
        <div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px">
            <img class="lazyy fonimg" data-src="../images/fon-aktsia.jpg" alt="study in Ukranr background">
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

@section('news')



@show

@section('footer')
    @parent
@endsection