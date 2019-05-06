@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')
    <!-- закоментировал пока для удобства -->
    { @foreach ($material  as $materials)

        {!!  $materials->body !!}


    @endforeach




@endsection

@section('news')

    <div class="container-fluid bg-light pt-5">


        <div class="container mt-5">


            <div class="row">
                @foreach ($novosti as $novostiss)

                    <div class="col-md-3">
                        <a href="news/{!!  $novostiss->slug !!}">
                            <div class="novosti mb-4">
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
                    </div>

                @endforeach


            </div>
        </div>
    </div>

@endsection

@section('footer')
    @parent
@endsection