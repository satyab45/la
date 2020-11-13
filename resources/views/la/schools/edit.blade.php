@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/schools') }}">School</a> :
@endsection
@section("contentheader_description", $school->$view_col)
@section("section", "Schools")
@section("section_url", url(config('laraadmin.adminRoute') . '/schools'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Schools Edit : ".$school->$view_col)

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
<link href="/custom/css/chosen.css" rel="stylesheet"/>
<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($school, ['route' => [config('laraadmin.adminRoute') . '.schools.update', $school->id ], 'method'=>'PUT', 'id' => 'school-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'description')
					@la_input($module, 'email')
					@la_input($module, 'mobile')
					@la_input($module, 'address')
					@la_input($module, 'organisation')
					@la_input($module, 'country')
					@la_input($module, 'tax_rate')
					--}}
                    <br>

					

					<table class="school_class">
						<thead>
							<th width="15%">Class</th>
							<th width="20%" style="text-align: center;">Enabled</th>
							<th width="15%">Teacher</th>
							<th width="10%">No of Division</th>
							<th width="30%">Subjects</th>
							<th width="10%">Fee</th>
						</thead>
						<?php
							$i=0;
							$c_names = ["Nursery", "Jr KG", "Sr. KG", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
						?>
						@foreach($school_classes as $school_class)
						<tr style="padding-bottom: 20px;">
							<td style="padding-right: 10px;padding-bottom: 10px;"><input name="cls_{{ $i }}" type="text" value="{{ $school_class->cls }}" class="form-control" /></td>
							
							<td style="text-align:center;"><input name="cls_enabled_{{ $i }}" type="checkbox" @if($school_class->enabled) checked @endif /></td>

							<td style="padding-right: 10px;">
								<select class="form-control" name="teacher_{{ $i }}">
									@foreach($users as $user)
										<option value="{{ $user->id }}" @if($user->id == $school_class->teacher) selected @endif>{{ $user->name }}</option>
									@endforeach
								</select>
							</td>
							<td style="padding-right: 10px;"><input name="no_of_division_{{ $i }}" type="text" class="form-control" /></td>
							<td style="padding-right: 10px;">
								<select name="subjects_{{ $i }}[]" class='form-control chosen_select_mul', multiple=>'multiple', data-placeholder=>"Choose a subject...">
								<?php
									$subject_ids = \App\Models\SchoolClassSubjects::where('class_id', $school_class->id)->pluck('subject_id')->toArray();
									//var_dump($subject_ids);exit;
								?>
									@foreach($subjects as $subject)
										<option value="{{ $subject->id }}" @if(in_array($subject->id, $subject_ids)) selected @endif>{{ $subject->name }}</option>
									@endforeach
								</select>
							</td>
							<td style="padding-right: 10px;">
								<input name="fee_{{ $i }}" type="number" class="form-control" />
							</td>
						</tr>
						<?php
							$i++;
						?>
						@endforeach
					</table>		

					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/schools') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script src="/custom/js/chosen.jquery.min.js"></script>
<script>
$(".chosen_select_mul").chosen({width:"100%"});
$(function () {
	$("#school-edit-form").validate({
		
	});
});
</script>
@endpush
