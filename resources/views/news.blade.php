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

    <div class="container-fluid px-0">
        <div class="jumbotron-foto py-5 header_jamberton_foto"
             style="background-color: rgba(0, 0, 0, 0.8196078431372549);">
            <img class="lazyy fonimg" style="opacity: 0.15;" alt=" "
                 data-src="@foreach ($novosti as $novostis)
                 @if(isset($novostis->foto1))
                 {{Voyager::image($novostis->thumbnail('cropped','foto1'))}} @else../images/fon-news-vverh.jpg @endif
                 @endforeach"/>
            <div class="container my-5 py5">
                <h1 class="text-uppercase text-white text-center"
                    style="margin-top:11%;margin-bottom:1%;letter-spacing: 0.05em;">
                    @foreach ($novosti as $novostis) {!!  $novostis->title!!}  </h1>@endforeach
            </div>
        </div>
    </div>
    <div class="container-fluid bg-light pt-3">
        <div class="container overflow-hidden">
            <nav aria-label="breadcrumb">

                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Главная</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('newss') }}">Новости</a></li>
                    <li class="breadcrumb-item active" aria-current="page">@foreach ($novosti  as $novostis)
                            {!!  $novostis->title !!}
                        @endforeach</li>
                </ol>
            </nav>

            <div class="novosti-block">
                @foreach ($novosti  as $novostis)
                    @if(isset($novostis->foto1))
                        <img class="novosti-block-img-1" alt="новости"
                             src="{{Voyager::image($novostis->thumbnail('medium','foto1'))}}"/>
                    @endif
                    {!!  $novostis->body !!}
                    @if(isset($novostis->foto2))
                        <img class="novosti-block-img-2" alt="новости"
                             src="{{Voyager::image($novostis->thumbnail('medium', 'foto2'))}}"/>
                    @endif
                    @if(isset($novostis->foto3))
                        <img class="novosti-block-img-3" alt="новости"
                             src="{{Voyager::image($novostis->thumbnail('medium', 'foto3'))}}"/>
                    @endif
                @endforeach
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