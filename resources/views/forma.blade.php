@extends('default.maintemplate')

@section('mainheader')
    <title>Form </title>
    <meta name="keywords" content="Ukrainian universities ">
    <meta name="description" content="We present to your attention ">
@endsection

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')
    <div class="container-fluid mx-0" style="background-color: #f7f7f7;">
        <div class="container p-5">
            <div class="row">
                <div class="col-sm-12 col-xl-7 mx-auto p-5 bg-white position-relative">
                    @if (count($errors) > 0)
                        <div class="warningalert alert-danger mb-3 p-2" style="width:100%; font-size: 0.8em;">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                                </ul>
                        </div>
                    @endif

                    @if (session('status'))
                        <div class="alert alert-success" role="alert" style="width:100%; font-size: 0.95em;">
                            {{ session('status') }}
                        </div>
                    @endif



                    {!! Form::open(['url' => route('forma'),'class'=>'form-horizontal','method'=>'POST','enctype'=>'multipart/form-data']) !!}


                    <div class="form-group">
                        {!! Form::label('name','Name',['class' => 'control-label'])   !!}
                        {!! Form::text('name',old('name'),['class' => 'form-control','placeholder'=>'Name'])!!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('surname', 'Name:',['class'=>'control-label']) !!}
                        {!! Form::text('surname', old('surname'), ['class' => 'form-control','placeholder'=>'Surname']) !!}

                    </div>
                    <div class="form-group">
                        {!! Form::label('mail','E-mail',['class' => 'control-label'])   !!}
                        {!! Form::text('mail',old('mail'),['class' => 'form-control','placeholder'=>'e-mail'])!!}
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                                                                           else.
                        </small>
                    </div>
                    <div class="form-group">
                        {!! Form::label('country', 'Country:',['class'=>'control-label']) !!}
                        {!! Form::text('country', old('country'), ['class' => 'form-control','placeholder'=>'Country ']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('countryviza', 'Visa country:',['class'=>'control-label']) !!}
                        {!! Form::text('countryviza', old('countryviza'), ['class' => 'form-control','placeholder'=>'странаviza ']) !!}
                    </div>
                    <div class="form-group mt-5">
                        <label class="control-label">Passport Datapage (Traveling document)</label>
                        <input style="margin-top: 9px;" type="file" class="filestyle form-control" name="photo[]">
                    </div>
                    <div class="form-group">
                        <label for="imagess" class="control-label">School certificate 1</label>
                        <input type="file" class="filestyle form-control" name="photo[]">
                    </div>
                    <div class="form-group">
                        <label for="imagess" class="control-label">School certificate 2 (if available)</label>
                        <input type="file" class="filestyle form-control" name="photo[]">
                    </div>
                    <div class="form-group">
                        <label for="imagess" class="control-label">University Certificate (if available)</label>
                        <input type="file" class="filestyle form-control" name="photo[]">
                    </div>
                    <div class="form-group">
                        <label for="imagess" class="control-label">Other educational document (if available)</label>
                        <input type="file" class="filestyle" name="photo[]">
                    </div>

                    <div class="form-group">
                        <div class="col-xs-offset-2 col-xs-10">
                            {!! Form::button('Send', ['class' => 'btn btn-primary','type'=>'submit']) !!}
                        </div>
                    </div>


                    {!! Form::close() !!}


                </div>
            </div>
        </div>
    </div>







@endsection





@section('footer')
    @parent
@endsection

<div id="counter"></div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/2.1.0/bootstrap-filestyle.min.js"></script>