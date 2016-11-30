@extends('admin.layouts.base-1cols')

@section('title')
How to Use the Hub | MDLive Marketing
@stop

@section('content')


<div id="how-to-use">
    <div id="howtouse-top">
        <!---carousel---->
        <div id="howtouse-carousel" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                @foreach( $sliders as $key => $slide )
                <div class="item @if($key == 0) active @endif">
                    <div class="slides">

                        <div class="com-md-7 col-sm-7 col-xs-12">
                            <div class="c-txt-left">
                                <h1>{!! $slide->title !!}</h1>
                                <p>{!! $slide->content !!}</p>
                            </div>      
                        </div>

                        @if ($slide->image)
                        {{--*/ $source = $slide->image /*--}}
                        <?php
                        //$img_formats = array("png", "jpg", "jpeg", "gif", "tiff");
                        // $source = pathinfo($img_url);
                        //dd($source);
                        ?>

                        <div class="com-md-5 col-sm-5 col-xs-12">
                            <img src="/{!! $source !!}" height="286">
                        </div>
                        @else
                        {{--*/$pattern1 = '/watch\?v\=/' /*--}}
                        @if (preg_match($pattern1, $slide->source)) 
                        {{--*/ $source = preg_replace($pattern1, 'embed/', $slide->source) /*--}}
                        @else
                        {{--*/$source = $slide->source /*--}}
                        @endif

                        <iframe class="com-md-5 col-sm-5 col-xs-12" height="286" src="{!! $source !!}" frameborder="0" allowfullscreen>
                        </iframe>
                        @endif
                    </div>
                </div>
                @endforeach


            </div>
            <!-- Controls -->

            <!-- Indicators -->
            <ol class="carousel-indicators" style="margin-top: 20px">
                @foreach( $sliders as $key => $slide)
                <li data-target="#howtouse-carousel" data-slide-to="{{ $key }}" @if($key == 0)class="active" @endif></li>        
                @endforeach
            </ol>
            <!-- Controls -->

        </div>
        <!---end------->
    </div>
    <div class="contents">
        <div class="how-to-use-bottom">
            <h2>It’s as easy as...</h2>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="how-use-info">
                        <img src="images/create-icon.png" alt="" class="img-responsive"/>
                        <h2>Create.</h2> 
                        {!! $page->creates !!}
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="how-use-info">
                        <img src="images/modify-icon.png" alt="" class="img-responsive"/>
                        <h2>Customize.</h2> 
                        {!! $page->customize !!}
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="how-use-info">
                        <img src="images/circulate-icon.png" alt="" class="img-responsive"/>
                        <h2>Circulate.</h2> 
                        {!! $page->circulate !!}
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-xs-12">
                    {{ HTML::link('/admin/users/dashboard', 'Click here to get started', array('class' => 'btn btn-get-started', 'target'=>'_blank'))}}                    
                </div>
            </div>
        </div>
    </div>
</div>

@stop

@if( count($user_data->user_profile()->first()) > 0 && (strtolower($user_data->groups()->first()->name)=="health system" || strtolower($user_data->groups()->first()->name)=="health plan" || strtolower($user_data->groups()->first()->name)=="employer"))
@section('footer_scripts') 
<script>
    $(document).ready(function () {
        var ajpath = window.location.href;
        $.ajax({
            dataType: "json",
            url: '/admin/pagelog/',
            data: {log_name: 'how-to-use-hub-page', title: 'How to use page', path:ajpath},
            success: function (result) {
            },
        });
    });
</script>

@stop
@endif