<div class="row margin-bottom-12">
    
   {{-- @include('laravel-authentication-acl::admin.firmware.search') --}}
</div>
@if( ! $results->isEmpty() ) 
<table class="table table-hover">
    <thead>
        <tr>
            <th>Driver Name</th>
            <th>Driver Model</th>
<!--            <th>Version</th>-->
            <th>Status</th>
            <th>Operations</th>
        </tr>
    </thead>
    <tbody>
        <?php
       // dd($results);
        ?>
        @foreach($results as $result) 
        <tr>
            <td style="width:30%">{{ $result->driver->name }}</td>
            <td style="width:30%">{{ $result->driver_model }}</td>
            
<!--            <td style="width:15%">{{-- $result->device_version --}}</td>-->
            <td style="width:10%">{{ ucfirst(strtolower($result->status)) }}</td>
            <td style="width:15%">
                <a href="{{ URL::route('driver.edit', ['id' => $result->id]) }}"><i class="fa fa-edit fa-2x"></i></a>
                <a href="{{ URL::route('driver.delete',['id' => $result->id, '_token' => csrf_token()])}}" class="margin-left-5 delete"><i class="fa fa-trash-o fa-2x"></i></a>
                <span class="clearfix"></span>
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

