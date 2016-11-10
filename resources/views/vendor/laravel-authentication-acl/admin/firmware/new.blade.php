@extends('laravel-authentication-acl::admin.layouts.base-2cols')

@section('title')
Admin area: add snippets
@stop

@section('head_css') 
{!! HTML::style('css/prism.css') !!}
{!! HTML::style('css/chosen.css') !!}
{!! HTML::style('/assets/css/colorbox.css') !!}
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
                <h3 class="panel-title bariol-bold"><i class="fa fa-users"></i> Add Firmware</h3>
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
                            {!! Form::label('firmware_category','Select Firmware Category: *') !!}
                            {!! Form::select('firmware_category', $fcategory_output_values, '', ["class"=>"form-control"]) !!}
                            <span class="text-danger">{!! $errors->first('firmware_category') !!}</span>
                        </div>
                        <div class="form-group">
                            {!! Form::label('device','Select Supported Device: *') !!}
                            {!! Form::select('device', $device_output_values, '', ["class"=>"form-control permission-select chosen-select"]) !!}
                            <span class="text-danger">{!! $errors->first('device') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('device_model','Supported Device Models:') !!}
                            {!! Form::text('device_model', null, [ 'class' => 'form-control', 'placeholder' => 'Supported Device Models here.']) !!}
                            <span class="text-danger">{!! $errors->first('device_model') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('device_version','Supported Device versions:') !!}
                            {!! Form::text('device_version', null, [ 'class' => 'form-control', 'placeholder' => 'Supported Device Versions here.']) !!}
                            <span class="text-danger">{!! $errors->first('device_version') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('country','Select supported countries:') !!}
                            {!! Form::select('country[]', $country_output_values, '', ["class"=>"form-control permission-select chosen-select", "id"=>'country', 'multiple'=>'multiple']) !!}
                            <span class="text-danger">{!! $errors->first('country') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('download_link','Download Links:') !!}
                            {!! Form::text('download_link', null, [ 'class' => 'form-control', 'placeholder' => 'Download links here.']) !!}
                            <span class="text-danger">{!! $errors->first('download_link') !!}</span>
                        </div>                        


                        <div class="form-group">
                            {!! Form::label('download_size','Download size:') !!}
                            {!! Form::text('download_size', null, [ 'class' => 'form-control', 'placeholder' => 'Download size here.']) !!}
                            <span class="text-danger">{!! $errors->first('download_size') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('tutorial_id','Select supported tutorial: *') !!}
                            {!! Form::number('tutorial_id', null, [ 'class' => 'form-control', 'placeholder' => 'Tutorial ID here.']) !!}
                            <span class="text-danger">{!! $errors->first('tutorial_id') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('starting_instruction','Starting Instruction(if any):') !!}
                            {!! Form::textarea('starting_instruction', null, [ 'class' => 'form-control tinymce', 'placeholder' => 'Starting Instruction here.']) !!}
                            <span class="text-danger">{!! $errors->first('st_instruct') !!}</span>
                        </div>

                        <div class="form-group">
                            {!! Form::label('status','Select status: *') !!}
                            {!! Form::select('status', $status_values, '', ["class"=>"form-control "]) !!}
                            <span class="text-danger">{!! $errors->first('status') !!}</span>
                        </div>

                        <div class="form-group">
                            {{ Form::checkbox('featured', 1, null, ['class' => 'field', 'id'=>'featured']) }}
                            {!! Form::label('featured','Featured') !!}
                        </div>   
                        <!--                        <div class="form-group">
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
                                                </div>-->
                        <div class="form-group">
                            {!! Form::label('noted','Noted (if any):') !!}
                            {!! Form::text('noted', null, [ 'class' => 'form-control', 'placeholder' => 'Firmware Note here.']) !!}
                        </div>
                        <span class="text-danger">{!! $errors->first('noted') !!}</span>
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
{!! HTML::script('/assets/js/jquery.colorbox-min.js') !!}
{!! HTML::script('/vendor/backpack/tinymce/tinymce.min.js') !!}
{!! HTML::script('/packages/barryvdh/elfinder/js/standalonepopup.min.js') !!}
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


    tinymce.init({
        selector: "textarea.tinymce",
        skin: "dick-light",
        plugins: "image,link,media,anchor,code",
        file_browser_callback: elFinderBrowser,
        relative_urls: false,
        remove_script_host: false,
        convert_urls: true,
    });
    function elFinderBrowser(field_name, url, type, win) {
        tinymce.activeEditor.windowManager.open({
            file: '<?= route('elfinder.tinymce4') ?>', // use an absolute path!
            title: 'elFinder 2.0',
            width: 900,
            height: 450,
            resizable: 'yes'
        }, {
            setUrl: function (url) {
                win.document.getElementById(field_name).value = url;
            }
        });
        return false;
    }

</script>

@stop

