@extends('admin.layouts.base-1cols')

@section('title')
    Firmware Category Firmware | Free Firmware
@stop


<style>

    #getStartedFormWrapper #formWrap input[type="submit"], form.wpcf7-form input[type="submit"] {
        height: 50px !important;
        width: 180px !important;
        font-size: 18px !important;
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

    .perCategoryWrapper {
        border: 1px solid grey;
        margin-top: 10px;
        padding: 5px;
        border-radius: 4px;
    }

    .perCategoryWrapper hr {
        margin-top: 5px;
        margin-bottom: 5px;
        border-top: 1px solid #eee;
        border: 1px transparent gray;
        color: black;
    }
    .wrapperLabel {
    display:inline-block;
        width:130px;
        font-weight: 800;
    }

</style>


@section('content')
    <div id="faqTop">
        <div class="container">
            <h1 id="pageTitle"> {{ $category->title }} </h1>
            <hr>
            <p><?php echo $category->description; ?></p>
        </div>

    </div>

    <div id="newsWrapper">
        <div class="container">
            <div class="row">

                @foreach ($results as $result)

                    <?php
                    $date = $result->created_at;
                    ?>

                    <div class="col-md-12 perCategoryWrapper">
                        <div class="col-md-2">
                            <a href="" target="_blank">
                                <img class="img-responsive"
                                     style='max-width: 100px; padding-top:25px; margin: auto; vertical-align: middle'
                                     src="/{{ $result->device()->first()->image }}"/>
                            </a>
                        </div>

                        <div class="col-md-10">
                            <h3>{{ $result->device_model }} Stock Rom</h3>
                            <hr>
                            <p><span class="wrapperLabel">Model Name </span> : {{ $result->device_model }}</p>
                            <p><span class="wrapperLabel">Country </span> : {{ $result->country()->first()->country_name }}</p>
                            <p><span class="wrapperLabel">Device Name </span> : {{ $result->device()->first()->name }}</p>
                            <p><span class="wrapperLabel">Device Version </span> : @if($result->fcategory_id==1) {{ 'Android' }} @endif
                                {{ $result->device_version }}</p>
                            <p><span class="wrapperLabel">Download Size </span> : {{ $result->d_sizes }}</p>
                            <p><span class="wrapperLabel">How to Flash </span> : <a href="">Click here to get instruction</a></p>
                            <p><span class="wrapperLabel">Download Link(s) </span> : <a href="">Download</a></p>
                            <hr>
                            <p><span>Created at {!! date("M d, Y", strtotime($result->created_at)) !!}</span><span
                                        class="pull-right"><a href="" target="_blank">Read More &raquo;</a></span></p>
                        </div>
                    </div>
                @endforeach


                <div class="paginator">
                    {{ $results->appends($request->except(['page']) )->render() }}
                </div>
            </div>


            <div style="clear:both;"></div>
        </div>
    </div>

@stop

