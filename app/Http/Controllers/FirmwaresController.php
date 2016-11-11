<?php

namespace LaravelAcl\Authentication\Controllers;

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use view,
    DB,
    App,
    Redirect,
    Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;
use LaravelAcl\Authentication\Exceptions\PermissionException;
use LaravelAcl\Authentication\Exceptions\ProfileNotFoundException;
use LaravelAcl\Authentication\Helpers\DbHelper;
use LaravelAcl\Authentication\Models\UserProfile;
use LaravelAcl\Authentication\Presenters\UserPresenter;
use LaravelAcl\Authentication\Services\UserProfileService;
use LaravelAcl\Authentication\Validators\UserProfileAvatarValidator;
use LaravelAcl\Library\Exceptions\NotFoundException;
use LaravelAcl\Authentication\Models\User;
use LaravelAcl\Authentication\Helpers\FormHelper;
use LaravelAcl\Authentication\Exceptions\UserNotFoundException;
use LaravelAcl\Authentication\Validators\UserValidator;
use LaravelAcl\Library\Exceptions\JacopoExceptionsInterface;
use LaravelAcl\Authentication\Validators\UserProfileValidator;
use LaravelAcl\Authentication\Interfaces\AuthenticateInterface;
use App\Http\Models\Firmware;
use App\Repositories\FirmwareRepository;

class FirmwaresController extends Controller {

    protected $auth;
    protected $logged_user;
    protected $firmwareRepository;

    public function __construct(AuthenticateInterface $auth, FirmwareRepository $firmwareRepo) {
        $this->auth = $auth;
        $this->logged_user = $this->auth->getLoggedUser();
        $this->firmwareRepository = $firmwareRepo;
    }

    public function getIndex() {
        $info = "welcome to web page";
        return View::make('admin.home.index')->with(['user_data' => $this->logged_user, 'info' => $info]);
    }

    public function getAdminList(Request $request) {
        $results = $this->firmwareRepository->all($request->except(['page']));
        return View::make('laravel-authentication-acl::admin.firmware.list')->with(['user_data' => $this->logged_user, 'results' => $results, 'request' => $request]);
    }

    public function getNew(Request $request) {
        $info = "welcome to web page";
        return View::make('laravel-authentication-acl::admin.firmware.new')->with(['user_data' => $this->logged_user, 'info' => $info]);
    }

    public function postNew(Request $request) {
        $logged_user = $this->auth->getLoggedUser();

        $downloadLink = implode(",", $request->download_link);
        $request->merge(array('download_link' => $downloadLink));

        $this->validate($request, ['firmware_category' => 'required', 'device' => 'required', 'device_model' => 'required', 'device_version' => 'required', 'status' => 'required', 'download_link' => 'required']);


        if (isset($request->country) && !count($request->country) > 0) {
            $countryArr = implode(",", $request->country);
            $request->merge(array('country_id' => $countryArr));
        } else {
            $request->merge(array('country_id' => null));
        }


        if ($request->tutorial_id == "" || empty($request->tutorial_id)) {
            $request->merge(array('tutorial_id' => NULL));
        }

        try {
            $input = $request->except(['_token', 'country']);
            $data = Array();
            $data['fcategory_id'] = $input['firmware_category'];
            $data['st_instruct'] = $input['starting_instruction'];
            $data['device_id'] = $input['device'];
            $data['device_model'] = $input['device_model'];
            $data['device_version'] = $input['device_version'];
            $data['tutorial_id'] = $input['tutorial_id'];
            $data['country_id'] = $input['country_id'];
            $data['d_links'] = $input['download_link'];
            $data['d_sizes'] = $input['download_size'];
            $data['noted'] = $input['noted'];
            $data['status'] = $input['status'];
            if (isset($data->featured) && $data->featured == 1) {
                $data['featured'] = $input['featured'];
            } else {
                $data['featured'] = 0;
            }
            $data['user_id'] = $logged_user->id;
            $result = $this->firmwareRepository->create($data);
        } catch (JacopoExceptionsInterface $e) {
            $errors = $this->f->getErrors();
            // passing the id incase fails editing an already existing item
            return Redirect::route("admin.firmware.new", [])->withInput()->withErrors($errors);
        }
        //return Redirect::route('firmware.list')->withMessage(Config::get('acl_messages.flash.success.snippet_new_success'));
        return Redirect::route('firmware.list');
    }

}
