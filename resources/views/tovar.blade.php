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
			<div class="jumbotron-foto py-5 header_jamberton_foto"
			     style="background-color: rgba(0, 0, 0, 0.8196078431372549);">
				<img class="lazyy fonimg" style="opacity: 0.15;" alt=" "
				     data-src="@foreach ($tovar as $tovarss){{Voyager::image($tovarss->thumbnail('cropped','image'))}}@endforeach"/>
				<div class="container my-5 py5">
					<h1 class="text-uppercase text-white text-center" style="margin-top:10%;margin-bottom:4%;">
						@foreach ($tovar as $tovarss) {!!  $tovarss->title!!}  </h1>
					<p class="lead text-white">{!!$tovarss->body!!}</p>  @endforeach
				</div>
			</div>
		</div>
		
		<div class="container-fluid bg-light pt-5">
			<div class="container mt-5 overflow-hidden">
				<div class="row">
					<div class="col-12 col-lg-6 col-xl-5">
						
						
						@foreach ($tovar as $tovarss)
							@if(isset($tovarss->image))
								<span class='zoom ex1'><img src="{{Voyager::image($tovarss->image)}}"><p>Нажми</p></span>
							@endif
							@if(isset($tovarss->img2))
								<span class='zoom ex1'><img src="{{Voyager::image($tovarss->img2)}}"><p>Нажми</p></span>
							@endif
							@if(isset($tovarss->img3))
								<span class='zoom ex1'><img src="{{Voyager::image($tovarss->img3)}}"><p>Нажми</p></span>
							@endif
							@if(isset($tovarss->img4))
								<span class='zoom ex1'><img src="{{Voyager::image($tovarss->img4)}}"><p>Нажми</p></span>
							@endif
					</div>
					<div class="col-12 col-lg-6 col-xl-7">
						<h5 class="mt-3 text-secondary">
							{!!  $tovarss->title !!}</h5>
						
						<h4 class="mt-3 bg-light text-info font-weight-bold">
							{!!  $tovarss->price !!}</h4>
						<div class="text-secondary">
							{!!$tovarss->harakteristic!!}</div>
						
						@endforeach
					</div>
				</div>
			</div>
		</div>
		
		<div class="container-fluid px-0" id="counter">
			<div class="jumbotron-foto pt-4 pb-4" style="background-color: rgba(98, 98, 98, 0.15); height: 400px">
				<img class="lazyy fonimg" data-src="../images/fon-aktsia.jpg" alt="study in Ukranr background">
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
	</section>
@endsection



@section('footer')
	@parent
@endsection