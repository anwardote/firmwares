<div class="row margin-bottom-12">
    <div class="col-md-12">
        <a href="{!! URL::route('firmware.new') !!}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Add New</a>
    </div>
</div>
@if( ! $results->isEmpty() ) 
<table class="table table-hover">
    <thead>
        <tr>
            <th>Category</th>
            <th>Device</th>
            <th>Model</th>
            <th>Version</th>
            <th>Featured?</th>
            <th>Status</th>
            <th>Operations</th>
        </tr>
    </thead>
    <tbody>
        @foreach($results as $result) 
        <tr>
            <td style="width:15%">{{ $result->fcategory->title }}</td>
            <td style="width:15%">{{ $result->device->name }}</td>
            <td style="width:10%">{{ $result->device_model }}</td>
            <td style="width:10%">{{ $result->device_version }}</td>
            @if($result->featured==0)
            <td style="width:5%">No</td>
            @else
            <td style="width:5%">Yes</td>
            @endif
            <td style="width:10%">{{ $result->status }}</td>
            <td style="width:10%">
                @if(! $result->device_id) 
                <a href="{{-- URL::route('firmware.edit', ['id' => $result->id]) --}}"><i class="fa fa-edit fa-2x"></i></a>
                <a href="{{-- URL::route('firmware.delete',['id' => $result->id, '_token' => csrf_token()]) --}}" class="margin-left-5 delete"><i class="fa fa-trash-o fa-2x"></i></a>
                <span class="clearfix"></span>
                @else 
                <i class="fa fa-times fa-2x light-blue"></i>
                <i class="fa fa-times fa-2x margin-left-12 light-blue"></i>
                @endif 
            </td>
        </tr>
        @endforeach 
    </tbody>
</table>
@else 
<span class="text-warning"><h5>No results found.</h5></span>
@endif 
<div class="paginator">
    {{ $results->appends($request->except(['page']) )->render() }}
</div>