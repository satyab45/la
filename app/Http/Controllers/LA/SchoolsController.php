<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;
use App\User;
use App\Models\Subject;
use App\Models\SchoolClass;
use App\Models\SchoolClassSubjects;

use App\Models\School;

class SchoolsController extends Controller
{
	public $show_action = true;
	public $view_col = 'school_name';
	public $listing_cols = ['id', 'name', 'description', 'email', 'mobile', 'address', 'organisation', 'country', 'tax_rate'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Schools', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Schools', $this->listing_cols);
		}
	}
	
	/**
	 * Display a listing of the Schools.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Schools');
		
		if(Module::hasAccess($module->id)) {
			return View('la.schools.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new school.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
		$module = Module::get('Schools');

		$users = User::orderBy('name', 'ASC')->get();
		$subjects = Subject::orderBy('name', 'ASC')->get();
		
		if(Module::hasAccess($module->id)) {
			return View('la.schools.add', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module,
				'users' => $users,
				'subjects' => $subjects,
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Store a newly created school in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Schools", "create")) {
		
			$rules = Module::validateRules("Schools", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			try{

			DB::beginTransaction();

			$insert_id = Module::insert("Schools", $request);

			for ($i = 0; $i <= 17; $i++){
				$cls = $request->input('cls_'.$i);
				$cls_enabled = ($request->input('cls_enabled_'.$i)) ? 1 : 0;
				$teacher = $request->input('teacher_'.$i);
				$no_of_division = $request->input('no_of_division_'.$i);
				$subjects = $request->input('subjects_'.$i);
				$fee = $request->input('fee_'.$i);

				//var_dump($subjects);exit;

				$class_id = SchoolClass::create([
					"cls" => $cls,
					"enabled" => $cls_enabled,
					"teacher" => $teacher,
					"no_of_division" => "$no_of_division",
					"fee" => "fee",
					"school_id" => $insert_id,
				]);

				if(!empty($insert_id) && !empty($class_id)){
					if(is_array($subjects)){
						foreach($subjects as $subject){
							//echo $subject;exit;
							SchoolClassSubjects::create([
								"school_id" => $insert_id,
								"class_id" => $class_id->id,
								"subject_id" => $subject,
							]);
						}
					}
				}

				// echo $cls."<br/>";
				// var_dump($cls_enabled)."<br/>";
				// echo $teacher."<br/>";
				// echo $no_of_division."<br/>";
				// print_r($subjects)."<br/>";
				// echo $fee."<br/>";
				// exit;
			}
			
			DB::commit();

			return redirect()->route(config('laraadmin.adminRoute') . '.schools.index');
		}catch(\Exception $e){
			DB::rollBack();
			//echo $e->getMessage();exit;
			return redirect()->back();
		}
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified school.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Schools", "view")) {
			
			$school = School::find($id);
			if(isset($school->id)) {
				$module = Module::get('Schools');
				$module->row = $school;
				
				return view('la.schools.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('school', $school);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("school"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified school.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Schools", "edit")) {			
			$school = School::find($id);
			if(isset($school->id)) {	
				$module = Module::get('Schools');
				
				$module->row = $school;

				$users = User::orderBy('name', 'ASC')->get();
				$subjects = Subject::orderBy('name', 'ASC')->get();
				$school_classes = SchoolClass::where('school_id', $id)->get();
				
				//$school_class_subjects = SchoolClassSubjects::where('school_id', $id)->where('class_id', $school_class->id)->get();
				return view('la.schools.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with([
					'school' => $school,
					'users' => $users,
					'subjects' => $subjects,
					'school_classes' => $school_classes,
					//'subjects' => $subjects,
				]);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("school"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified school in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Schools", "edit")) {
			
			$rules = Module::validateRules("Schools", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Schools", $request, $id);

			try{
				DB::beginTransaction();

				SchoolClass::where('school_id', $insert_id)->delete();
				SchoolClassSubjects::where('school_id', $insert_id)->delete();

				for ($i = 0; $i <= 17; $i++){
					$cls = $request->input('cls_'.$i);
					$cls_enabled = ($request->input('cls_enabled_'.$i)) ? 1 : 0;
					$teacher = $request->input('teacher_'.$i);
					$no_of_division = $request->input('no_of_division_'.$i);
					$subjects = $request->input('subjects_'.$i);
					$fee = $request->input('fee_'.$i);
	
					$class_id = SchoolClass::create([
						"cls" => $cls,
						"enabled" => $cls_enabled,
						"teacher" => $teacher,
						"no_of_division" => "$no_of_division",
						"fee" => "fee",
						"school_id" => $insert_id,
					]);
	
					if(!empty($insert_id) && !empty($class_id)){
						if(is_array($subjects)){
							foreach($subjects as $subject){
								//echo $subject;exit;
								SchoolClassSubjects::updateOrCreate([
									"school_id" => $insert_id,
									"class_id" => $class_id->id,
									"subject_id" => $subject,
								]);
							}
						}
					}
	
					// echo $cls."<br/>";
					// var_dump($cls_enabled)."<br/>";
					// echo $teacher."<br/>";
					// echo $no_of_division."<br/>";
					// print_r($subjects)."<br/>";
					// echo $fee."<br/>";
					// exit;
				}
				
				DB::commit();
				return redirect()->route(config('laraadmin.adminRoute') . '.schools.index');
			}catch(\Exception $e){
				DB::rollBack();
				echo $e->getMessage();exit;
				return redirect()->back();
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified school from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Schools", "delete")) {
			School::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.schools.index');
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}
	
	/**
	 * Datatable Ajax fetch
	 *
	 * @return
	 */
	public function dtajax()
	{
		$values = DB::table('schools')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Schools');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
				}
				if($col == $this->view_col) {
					$data->data[$i][$j] = '<a href="'.url(config('laraadmin.adminRoute') . '/schools/'.$data->data[$i][0]).'">'.$data->data[$i][$j].'</a>';
				}
				// else if($col == "author") {
				//    $data->data[$i][$j];
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Schools", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/schools/'.$data->data[$i][0].'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Schools", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.schools.destroy', $data->data[$i][0]], 'method' => 'delete', 'style'=>'display:inline']);
					$output .= ' <button class="btn btn-danger btn-xs" type="submit"><i class="fa fa-times"></i></button>';
					$output .= Form::close();
				}
				$data->data[$i][] = (string)$output;
			}
		}
		$out->setData($data);
		return $out;
	}
}
