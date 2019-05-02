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