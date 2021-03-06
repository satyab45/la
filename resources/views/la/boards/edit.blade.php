@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/boards') }}">Board</a> :
@endsection
@section("contentheader_description", $board->$view_col)
@section("section", "Boards")
@section("section_url", url(config('laraadmin.adminRoute') . '/boards'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Boards Edit : ".$board->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($board, ['route' => [config('laraadmin.adminRoute') . '.boards.update', $board->id ], 'method'=>'PUT', 'id' => 'board-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'description')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/boards') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#board-edit-form").validate({
		
	});
});
</script>
@endpush
