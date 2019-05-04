



<a href="#0" class="cd-subnav-trigger"><span>{{ $item->title }}</span></a>
<ul class="second_level_menu">

    <li class="go-back"><a href="#0">Menu</a></li>
    @foreach ($items as $item)

            <li>



            <a href="{{ url($item->link()) }}" target="{{ $item->target }}" >

                {{ $item->title }}
            </a>

            </li>

    @endforeach
</ul>


