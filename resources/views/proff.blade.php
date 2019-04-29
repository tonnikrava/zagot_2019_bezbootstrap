@extends('default.maintemplate')

@section('mainheader')
    <title>Choose a profession</title>
    <meta name="keywords" content="">
    <meta name="description" content="Choose a profession">
@endsection

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')

    <div class="container-fluid px-0 py-5" style="background-color: #f7f7f7">
        <h2 class="text-uppercase text-center gradient-text-h2 mt-5">choose a profession</h2>
        <p class="p-h2-fon" style="color: rgba(209, 209, 209, 0.34)!important;">choose a profession</p>

        <div class="container my-4">

            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">



                <div class="proff2 position-relative">
                    <img alt="study in ukraine vuz"
                         src="images/study-in-ukraine-doctor.jpg"
                         style="display: inline;">

                    <p>Medical courses</p>


                    <table class="blueTable">


                        <tbody>
                        @foreach ($materiall  as $materialls)



                            <tr>
                                <td>
                                    <a href="prof/{!!  $materialls->slug !!}">
                                        {!!  $materialls->title !!} </a>
                                </td>
                            </tr>


                        @endforeach
                        </tbody>
                    </table>


                </div>
                <div class="proff2 position-relative">
                    <img alt="study in ukraine vuz"
                         src="images/study-in-ukraine-buissnes.jpg"
                         style="display: inline;">

                    <p>Business/Economics/Tourism Management</p>
                    <table class="blueTable">


                        <tbody>
                        @foreach ($materialll  as $materiallls)



                            <tr>
                                <td>
                                    <a href="prof/{!!  $materiallls->slug !!}">
                                        {!!  $materiallls->title !!} </a>
                                </td>
                            </tr>


                        @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="proff2 position-relative">
                    <img alt="study in ukraine vuz"
                         src="images/study-in-ukraine-ingenir.jpg"
                         style="display: inline;">

                    <p>Engineering courses</p>


                    <table class="blueTable">
                        <tbody>


                        @foreach ($material  as $materials)



                            <tr>
                                <td>
                                    <a href="prof/{!!  $materials->slug !!}">
                                        {!!  $materials->title !!} </a>
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

    <div id="counter"></div>


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