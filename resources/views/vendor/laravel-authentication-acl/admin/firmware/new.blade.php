@extends('laravel-authentication-acl::admin.layouts.base-2cols')

@section('title')
Admin area: add snippets
@stop

@section('head_css')  
{!! HTML::style('css/prism.css') !!}
{!! HTML::style('css/chosen.css') !!}
{!! HTML::style('vendor/backpack/colorbox/example2/colorbox.css') !!}

@stop

@section('content')
{{-- @include('tinymce::tpl')  --}}
<div class="row">
    <div class="col-md-12">
        {{-- model general errors from the form --}}
        @if($errors->has('model') )
        <div class="alert alert-danger">{!! $errors->first('model') !!}</div>
        @endif

        {{-- successful message --}}
        <?php $message = Session::get('message'); ?>
        @if( isset($message) )
        <div class="alert alert-success">{{$message}}</div>
        @endif
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title bariol-bold"><i class="fa fa-users"></i> Create snippets</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        {{-- group base form --}}

                        {!! Form::open(
                        array(
                        'route' => 'firmware.new', 
                        'class' => '', 
                        'files' => true)) !!}
                        <div class="form-group">
                            {!! Form::label('title','Snippet Title: *') !!}
                            {!! Form::text('title', null, [ 'class' => 'form-control', 'placeholder' => 'Snippet Title']) !!}
                            <span class="text-danger">{!! $errors->first('title') !!}</span>
                        </div>
                        <div class="form-group">
                            <div class="form-group">
                                {!! Form::label('thumbnail','Snippet Thumbnail: ') !!}                                
                                {!! Form::text('thumbnail', null, ['id' => 'image-filemanager', 'class' => 'form-control', 'readonly' => 'readonly']) !!}
                                <div class="btn-group" role="group" aria-label="..." style="margin-top: 3px;">
                                    <button type="button" data-inputid="image-filemanager" class="btn btn-default popup_selector">
                                        <i class="fa fa-cloud-upload"></i> Browse uploads</button>
                                    <button type="button" data-inputid="image-filemanager" class="btn btn-default clear_elfinder_picker">
                                        <i class="fa fa-eraser"></i> Clear</button>
                                </div>
                                <span class="text-danger">{!! $errors->first('thumbnail') !!}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('description','Snippet description: *') !!}
                            {!! Form::textarea('description', null, [ 'class' => 'form-control tinymce', 'placeholder' => 'Snippet descriptions']) !!}
                        </div>
                        <span class="text-danger">{!! $errors->first('description') !!}</span>
                        {!! Form::hidden('id') !!}

                        {!! Form::submit('Save', array("class"=>"btn btn-info pull-right ")) !!}
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('footer_scripts')
{!! HTML::script('js/chosen.jquery.js') !!}
{!! HTML::script('js/prism.js') !!}
{!! HTML::script('vendor/backpack/colorbox/jquery.colorbox-min.js') !!}
<script>
    $(".delete").click(function () {
        return confirm("Are you sure to delete this snippet?");
    });

    var config = {
        '.chosen-select': {},
        '.chosen-select-deselect': {allow_single_deselect: true},
        '.chosen-select-no-single': {disable_search_threshold: 10},
        '.chosen-select-no-results': {no_results_text: 'Oops, nothing found!'},
        '.chosen-select-width': {width: "95%"}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }

    var config = {
        '.chosen-select': {},
        '.chosen-select-deselect': {allow_single_deselect: true},
        '.chosen-select-no-single': {disable_search_threshold: 10},
        '.chosen-select-no-results': {no_results_text: 'Oops, nothing found!'},
        '.chosen-select-width': {width: "95%"}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }


</script>

{!! HTML::script('packages/barryvdh/elfinder/js/standalonepopup.js') !!}
@stop

