@extends('admin.layouts.base-1cols')

@section('title')
News & Media | MDLive Marketing
@stop


<style>

    #getStartedFormWrapper #formWrap input[type="submit"], form.wpcf7-form input[type="submit"] {
        height: 50px !important;
        width: 180px !important;
        font-size:18px !important;
    }
    #TagPopup_FormContainerBody p.modalform {
        margin: 5px 0;
        font-size: 14px;
    }
    .wpcf7-form-control-wrap textarea {
        height: 80px;
        resize: none;
    }
    .modalform .wpcf7-form-control-wrap input {
        height: 25px;
    }
    #TagPopup_FormContainerBody form div {
        border: medium none;
        margin: 5px 0;
        padding: 0;
        text-align: left;
    }



    #newsWrap {
        width:745px;
        float:left;
        border-right:solid 2px #b4b4b4;
        padding-right:60px;
    }
    #pressWrap {
        float:right;
        width:350px;
    }
    #newsWrapper {
        padding:30px 0px;
    }
    #newsWrapper .newsArtWrap {
        margin-bottom:35px;
    }
    #newsWrapper .newsArtWrap.lp {
        margin-bottom:20px;
    }
    #newsWrapper .newsArtWrap .picWrap {
        width:100px;
        float:left;
    }
    #newsWrapper .newsArtWrap .newsInfo {
        float:right;
        max-width:550px;
        font-size:17px;
    }

    @media only screen and (max-width: 580px){
        #newsWrapper .newsArtWrap .newsInfo {
            max-width:350px;
        }
        #newsWrapper .newsArtWrap .newsInfo {
            float:right;
            max-width:550px;
            font-size:17px;
        }
    }
    #newsWrapper .newsArtWrap .newsInfo.wide {
        width:870px;
    }
    #newsWrapper .newsArtWrap .newsInfo .newsDate {
        color:#000000;
    }
    #newsWrapper .newsArtWrap .newsInfo h3 {
        color:#d0112b;
        font-size:19px;
        font-family: "Gotham Narrow A", "Gotham Narrow B";
        font-style: normal;
        font-weight: 400;
        margin:0px;
        padding:0px;
    }
    #newsWrapper .newsArtWrap .newsInfo p {
        margin:0px;
        padding:0px;
    }
    #newsWrapper .newsArtWrap .newsInfo a {
        color:#d0112b;
        text-decoration:none;	
    }
    #newsWrapper .pressWrapItem {
        margin-bottom:20px;
    }
    #newsWrapper .pressWrapItem h3 {
        font-family: "Gotham Narrow A", "Gotham Narrow B";
        font-style: normal;
        font-weight: 400;
        font-size:17px;
        margin:0px;
        padding:0px;
    }
    #newsWrapper .pressWrapItem h3 a {
        color:#d0112b;
        text-decoration:none;
    }
    h1#pageTitle {
        margin: 0px;
        padding: 0px;
        color: #d0112b;
        font-size: 56px;
        font-family: "Gotham A", "Gotham B";
        font-style: normal;
        font-weight: 400;}
    #faqTop {
        padding-top: 60px;
        padding-bottom: 20px;
    }

</style>


@section('content')

<div id="faqTop">
    <div class="container">
        <h1 id="pageTitle">News & Media</h1>
    </div>
</div>

<div id="newsWrapper">
    <div class="container">
        <div id="newsWrap">

            @foreach ($newsmedia as $news) 

            <?php
            $date = $news->created_at;
            ?>

            <div class="newsArtWrap cf">
                <div class="picWrap">
                    <a href="{!! $news->slug !!}" target="_blank">
                        <img alt="test" style='max-width: 100px' src="{!! $news->image !!}"/>
                    </a>
                </div>

                <div class="newsInfo">
                    <h2 class="newsDate">{!! $news->source; !!}- {!! date("M d, Y", strtotime($news->created_at)) !!}</h2>
                    <h3>{!!$news->title !!}</h3>
                    <p>{!!$news->content !!}</p>

                    <a href="{!! $news->slug !!}" target="_blank">Read More &raquo;</a>

                </div>
            </div>
            @endforeach


            <a href="/news/">View All</a>
        </div>


        <div id="pressWrap"><h2 style="font-size:18px; font-weight:bold;">PRESS RELEASES</h2><br>

            @foreach ($pressrelease as $press)

            <div class="pressWrapItem cf">
                <div class="newsDate">{!! date("M d, Y", strtotime($press->created_at)); !!}</div>
                <?php
                $pattern1 = '/^http:/';
                $pattern2 = '/^https:/';
                $slug = "";
                if (preg_match($pattern1, $press->slug) || preg_match($pattern2, $press->slug)) {
                    $slug = $press->slug;
                } else {
                    $slug = "/press-releases/detail/" . $press->slug;
                }
                ?>
                <h3>{{ HTML::link($slug, $press->title, array('target' => '_blank') ) }}</h3>
            </div>


            @endforeach

            <a href="/press-releases/">View All</a>
            <hr>


            <a class="lgGrayBtn" href='javascript:TagPopup_OpenForm("TagPopup_FormContainer","TagPopup_FormContainerBody","TagPopup_FormContainerFooter");'></a>
            <div style="display: none;" id="TagPopup_FormContainer" class="info-modal">
                <div id="TagPopup_FormContainerHeader">                    
                    <div id="TagPopup_FormClose"><a href="javascript:TagPopup_HideForm('TagPopup_FormContainer','TagPopup_FormContainerFooter');"></a></div>
                </div>

                <div id="TagPopup_FormContainerBody">

                </div>
            </div>
            <div style="display: none;" id="TagPopup_FormContainerFooter"></div>                   
        </div>        

        <div style="clear:both;"></div>
    </div>
</div>

@stop

@if( count($user->user_profile()->first()) > 0 && (strtolower($user->groups()->first()->name)=="health system" || strtolower($user->groups()->first()->name)=="health plan" || strtolower($user->groups()->first()->name)=="employer"))
@section('footer_scripts') 
<script>
    $(document).ready(function () {
        var ajpath = window.location.href;
        $.ajax({
            dataType: "json",
            url: '/admin/pagelog/',
            data: {log_name: 'news-media-page', title: 'News & Media page', path:ajpath},
            success: function (result) {
            },
        });
    });
</script>
@stop
@endif