@extends('admin.layouts.base-1cols')

@section('title')
Resources | MDLive Marketing
@stop

@section('head_css') 
<style>
    #faqTop {
        padding-top:80px;
    }
    #faqTop #topText {
        font-size:29px;
        margin:0px;
        padding-top:20px;
        padding-bottom:40px;
    }
    #faqsWrap {
        padding-bottom:20px;
    }
    #faqsWrap .question {
        border-top:solid 1px #9e9fa1;
        background-color:#f3f3f3;
        padding:17px 10px 17px 0px;
        font-size:21px;
        background-image:url(../images/faq-plus.png);
        background-repeat:no-repeat;
        background-position:15px center;
        padding-left:47px;
        cursor:pointer;
    }
    #faqsWrap .question:hover {
        background-color:#ececec;
    }
    #faqsWrap .question.active:hover {
        background-color:#f3f3f3;
    }
    #faqsWrap .question.active {
        color:#d0112b;
        font-weight:500;
        background-image:url(images/faq-minus.png);
    }
    #faqsWrap .answer {
        padding:0px 47px;
        background-color:#f3f3f3;
        padding-bottom:5px;
        font-size:19px;
        display:none;
    }
    #faqsWrap .answer p:first-child {
        margin-top:0px;
    }

    #faqsWrap .answer p:last-child { 
        margin-bottom:15px;
    }
    #faqsWrap #bLine {
        height:1px;
        background-color:#9e9fa1;
    }
    #faqsWrap h3 {
        margin:25px 0px;
        padding:0px;
        color:#d0112b;
        font-size:31px;
        text-align:center;
        font-family: "Gotham A", "Gotham B";
        font-style: normal;
        font-weight: 400;
    }
    #faqsWrap #disclaimerText {
        font-size:17px;
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
    .case-std {
        font-family: 'GothamNarrow-Book';
        color: #53565a;
        float: left;
        font-size: 25px;
        font-weight: 400;
        margin-bottom: 40px;
        margin-left: 16px;
        padding: 0 !important;
    }

    div {
        display: block;
    }
    body {
        margin: 0px;
        padding: 0px;
        font-size: 16px;
        font-family: "Gotham Narrow A", "Gotham Narrow B";
        font-style: normal;
        font-weight: 400;
        letter-spacing: -0.2px;
    }

    .sheets-inner {
        float: left;
        width: 100%;
        margin: 0 0 40px;
        padding: 0 6px 0 0;
    }

    .sheets-inner .right-s-vd {
        float: left;
        width: 55%;
    }

    .sheets-inner {
        float: left;
        width: 100%;
        margin: 0 0 40px;
        padding: 0 6px 0 0;
    }

    .sheets-inner.vvd > a {
        color: #d0112b;
        font-size: 16px;
        text-decoration: none;
        float: left;
        width: 42%;
    }


    .col-md-6 {        
        padding-left: 0;
        padding-right: 0;
    }
    .sheets-inner .right-s-vd a {
        color: #d0112b;
        font-size: 16px;
        text-decoration: none;
        display: inline;
        padding-top: 0;
    }
    .right-s-in {
        display: table;
    }
</style>
@stop

@section('content')

<div id="topSecOP" class="banner topresource" style='background: rgba(0, 0, 0, 0) url("/{!! $page->banner_image!!}") repeat scroll right top / cover;height: 458px;'>

    <div class="container">
        <h1>{!! $page->banner_title !!}</h1>
        <p>{!! $page->banner_description !!}</p>
    </div>
</div>


<div style="height:60px;"></div>

<div id="faqsWrap" class="faqss">
    <div class=""> 
        @foreach($categories as $c)
        <h2 class="question pannel-head active">{{ $c->name }}</h2>
        <div class="resource-area">
            <div class="row">	
                @if($c->id=="12")
                <p class="case-std" >{!! $page->case_source !!}</p>
                @endif
                <?php
                $i = 1;
                ?>
                @foreach ($articles as $a) 
                <?php
                $title = $a->title;
                $content = $a->content;
                $slug = $a->slug;
                $source = $a->source;
                $image = $a->image;
                ?>
                @if($c->id == $a->category_id)

                <div class="col-sm-6">
                    <div class="sheets-inner">
                        <a target="_blank" href="{!! $slug !!}"><img style="max-width: 180px" src="{!! $image !!}"/></a> 
                        <div class="right-s-in">
                            <h3>{!! $title !!}</h3>
                            <p>{!! $content !!}</p>            
                            <a target="_blank" href="{!! $slug; !!}">Learn more</a>

                        </div>
                    </div>
                </div>

                @if($i % 2 == 0)
                {!! "</div><div class='row'>" !!}
                @endif
                <?php
                $i++;
                ?>
                @endif
                @endforeach
            </div>
        </div>
        @endforeach
    </div>
</div>


<div style="height:60px;"></div>
@stop


@if( count($user_data->user_profile()->first()) > 0 && (strtolower($user_data->groups()->first()->name)=="health system" || strtolower($user_data->groups()->first()->name)=="health plan" || strtolower($user_data->groups()->first()->name)=="employer"))
@section('footer_scripts') 
<script>
    $(document).ready(function () {
        var ajpath = window.location.href;
        $.ajax({
            dataType: "json",
            url: '/admin/pagelog/',
            data: {log_name: 'resources-page', title: 'Resources page', path:ajpath},
            success: function (result) {
            },
        });
    });
</script>
@stop
@endif