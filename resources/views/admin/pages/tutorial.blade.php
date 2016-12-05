@extends('admin.layouts.base-1cols')

@section('title')
Tutorial | Free Firmware
@stop


@section('head_css')
    <style>
        #faqTop {
            padding-top: 80px;
        }

        #faqTop #topText {
            font-size: 29px;
            margin: 0px;
            padding-top: 20px;
            padding-bottom: 40px;
        }

        #faqsWrap {
            padding-bottom: 20px;
        }

        #faqsWrap .question {
            border-top: solid 1px #9e9fa1;
            background-color: #f3f3f3;
            padding: 17px 10px 17px 0px;
            font-size: 21px;
            background-image: url(../images/faq-plus.png);
            background-repeat: no-repeat;
            background-position: 15px center;
            padding-left: 47px;
            cursor: pointer;
        }

        #faqsWrap .question:hover {
            background-color: #ececec;
        }

        #faqsWrap .question.active:hover {
            background-color: #f3f3f3;
        }

        #faqsWrap .question.active {
            color: #d0112b;
            font-weight: 500;
            background-image: url(images/faq-minus.png);
        }

        #faqsWrap .answer {
            padding: 0px 47px;
            background-color: #f3f3f3;
            padding-bottom: 5px;
            font-size: 19px;
            display: none;
        }

        #faqsWrap .answer p:first-child {
            margin-top: 0px;
        }

        #faqsWrap .answer p:last-child {
            margin-bottom: 15px;
        }

        #faqsWrap #bLine {
            height: 1px;
            background-color: #9e9fa1;
        }

        #faqsWrap h3 {
            margin: 25px 0px;
            padding: 0px;
            color: #d0112b;
            font-size: 31px;
            text-align: center;
            font-family: "Gotham A", "Gotham B";
            font-style: normal;
            font-weight: 400;
        }

        #faqsWrap #disclaimerText {
            font-size: 17px;
        }

        #faqsWrap .question.active {
            color: #d0112b;
            font-weight: 500;
            background-image: url(css/faq-minus.png);
        }

        #faqsWrap .question {
            border-top: solid 1px #9e9fa1;
            background-color: #f3f3f3;
            padding: 17px 10px 17px 0px;
            font-size: 21px;
            background-image: url(css/faq-plus.png);
            background-repeat: no-repeat;
            background-position: 15px center;
            padding-left: 47px;
            cursor: pointer;
        }

        .faqss .question {
            height: auto;
            line-height: normal;
            text-align: left;
            color: #53565a;
        }
</style>
        @endsection


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
                            <img src="/{!! $slide->image !!}" height="286">
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

<br>
    <div class="col-md-12 resource-area">

        @foreach ($tutorial as $result)

            <?php
            $date = $result->created_at;

            ?>

            <div class="col-md-12 perCategoryWrapper">
                <div class="col-md-2">
                    <a href="{{ route('firmware.category.firmware') }}/{{ $result->id }}" target="_blank">
                        <img class="img-responsive" style='max-width: 100px; margin: auto; vertical-align: middle' src="/images/tutorial-icon.png"/>
                    </a>
                </div>

                <div class="col-md-10">
                    <h3><a href="{{ route('firmware.category.firmware') }}/{{ $result->id }}">{!!$result->title !!}</a></h3>
                    <hr>
                    <p>{!!$result->description !!}</p>
                    <hr>
                    <p><span>Created at  {!! date("M d, Y", strtotime($result->created_at)) !!}</span><span class="pull-right"><a href="{{ route('firmware.category.firmware') }}/{{ $result->id }}" target="_blank">Read More &raquo;</a></span></p>
                </div>
            </div>
        @endforeach

    </div>


@stop
