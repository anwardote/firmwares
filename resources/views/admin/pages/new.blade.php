@extends('laravel-authentication-acl::admin.layouts.base-2cols')

@section('title')
Admin area: Add new page
@stop

@section('content')
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
                <h3 class="panel-title bariol-bold"><i class="fa fa-users"></i> Create content</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-10 col-xs-12">
                        {!! Form::model([ 'url' => [URL::route('pages.new')], 'method' => 'post'] ) !!}
                        <div class="form-group">
                            <label>Template</label>
                            <select class="form-control" id="select_template" name="template">
                                @foreach($templates as $template)
                                <option value="{{ $template }}">{{ ucfirst(str_replace("_", " ", $template)) }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            {!! Form::label('name','Page name: *') !!}
                            {!! Form::text('name', null, ['class' => 'form-control']) !!}
                        </div>
                        <span class="text-danger">{!! $errors->first('name') !!}</span>
                        <div class="form-group">
                            {!! Form::label('title','Page title: *') !!}
                            {!! Form::text('title', null, ['class' => 'form-control']) !!}
                        </div>
                        <span class="text-danger">{!! $errors->first('title') !!}</span>
                        <div class="form-group">
                            {!! Form::label('slug','Page slug(URL): *') !!}
                            {!! Form::text('slug', null, ['class' => 'form-control']) !!}
                        </div>
                        <span class="text-danger">{!! $errors->first('title') !!}</span>
                        {!! Form::hidden('id') !!}
                        @foreach($fields as $field)
                            
                        @endforeach
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
<script>
    function redirect_to_new_page_with_template_parameter() {
        var new_template = $("#select_template").val();
        var current_url = "{{ Request::url() }}";

        window.location.href = strip_last_template_parameter(current_url) + '/' + new_template;
    }

    function strip_last_template_parameter(url) {
        // if it's a create or edit link with a template parameter
        if (url.indexOf("/create/") > -1 || url.indexOf("/edit/") > -1)
        {
            // remove the last parameter of the url
            var url_array = url.split('/');
            url_array = url_array.slice(0, -1);
            var clean_url = url_array.join('/');

            return clean_url;
        }

        return url;
    }

    jQuery(document).ready(function ($) {
        $("#select_template").change(function (e) {
            var select_template_confirmation = confirm("Are you sure you want to change the page template? You will lose any unsaved modifications for this page.");
            if (select_template_confirmation == true) {
                redirect_to_new_page_with_template_parameter();
            } else {
                // txt = "You pressed Cancel!";
            }
        });

    });
</script>
@stop