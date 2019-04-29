@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')

    @foreach ($material  as $materials)

            {!!  $materials->body !!}


    @endforeach







@endsection

@section('footer')
    @parent
@endsection