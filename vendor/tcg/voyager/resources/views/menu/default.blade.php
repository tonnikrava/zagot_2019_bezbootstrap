

  @foreach ($items as $item)

        @php

            $originalItem = $item;
            $Dropdownli = null;
            $Nolink = url($item->link());
            $isActive = null;
            $disLink = null;
            $icon = null;


            // Background Color or Color


            // Check if link is current
            if(url($item->link()) == url()->current()){
                $isActive = "borderr";
                $disLink = 'disabled ';
                $Nolink = '#';
            }


            $isChild = null;
            $isChildd = null;
            $isChilddd = " target=\"_self\" ";



        @endphp


        <li class={{ $isActive }}>
            @if(!$originalItem->children->isEmpty())


                @include('voyager::menu.defaultchild', ['items' => $originalItem->children, 'options' => $options])
            @else
            <a class="{{ $disLink }}" href="{{ $Nolink }}">

                {{ $item->title }}






            @endif
            </a>
        </li>

    @endforeach

