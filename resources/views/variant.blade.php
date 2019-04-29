@extends('default.maintemplate')

@section('mainheader')
    <title></title>
    <meta name="keywords" content="">
    <meta name="description" content="">
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
                        <li class="breadcrumb-item"><a href="../professions">PROGRAMS & TUITION FEE</a></li>
                        <li class="breadcrumb-item active" aria-current="page">@foreach ($material  as $materials)

                                {!!  $materials->title !!}


                            @endforeach</li>
                    </ol>

                </div>


            </nav>


            <div class="container">


                <div class="row">
                    <div class="col-sm-12 p-3 col-lg-8 p-4">

                        @foreach ($material  as $materials)

                            {!!  $materials->body !!}


                        @endforeach
                    </div>

                    <div class="col-sm-12 p-3 col-lg-4">


                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-doctor.jpg"
                                 style="display: inline;">

                            <p>Medical courses</p>


                            <table class="blueTable">


                                <tbody>
                                @foreach ($prof2  as $prof22)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof22->slug !!}">
                                                {!!  $prof22->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach
                                </tbody>
                            </table>


                        </div>
                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-buissnes.jpg"
                                 style="display: inline;">

                            <p>Business/Economics/Tourism Management</p>
                            <table class="blueTable">


                                <tbody>
                                @foreach ($prof3  as $prof33)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof33->slug !!}">
                                                {!!  $prof33->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-ingenir.jpg"
                            >

                            <p>Engineering courses</p>


                            <table class="blueTable">
                                <tbody>


                                @foreach ($prof1  as $prof11)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof11->slug !!}">
                                                {!!  $prof11->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach


                                </tbody>
                            </table>

                            </tbody>
                            </table>

                        </div>


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



@section('footer')
    @parent
@endsection