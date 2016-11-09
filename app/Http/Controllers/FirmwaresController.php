<?php

namespace LaravelAcl\Authentication\Controllers;

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use view,
    DB,
    App;
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
use Backpack\NewsCRUD\app\Models\Article;
use Backpack\PageManager\app\Models\Page;
use Backpack\NewsCRUD\app\Models\Category as Category;

class FirmwaresController extends Controller {

    protected $auth;
    protected $logged_user;

    public function __construct(AuthenticateInterface $auth) {
        $this->auth = $auth;
        $this->logged_user = $this->auth->getLoggedUser();
    }

    public function getIndex() {
        $info = "welcome to web page";
        return View::make('admin.home.index')->with(['user_data' => $this->logged_user, 'info' => $info]);
    }

    public function getAdminList() {
        $info = "welcome to web page";
        return View::make('laravel-authentication-acl::admin.firmware.list')->with(['user_data' => $this->logged_user, 'info' => $info]);
    }

    public function getNew(Request $request) {
        $info = "welcome to web page";
        return View::make('laravel-authentication-acl::admin.firmware.new')->with(['user_data' => $this->logged_user, 'info' => $info]);
    }

    public function postNew(Request $request) {
        $info = "welcome to web page";
        return View::make('laravel-authentication-acl::admin.firmware.new')->with(['user_data' => $this->logged_user, 'info' => $info]);
//        $user_id = $request->get('id');
//        $group_id = $request->get('group_id');
//
//        try {
//            $this->user_repository->addGroup($user_id, $group_id);
//        } catch (JacopoExceptionsInterface $e) {
//            return Redirect::route('users.edit', ["id" => $user_id])
//                            ->withErrors(new MessageBag(["name" => Config::get('acl_messages.flash.error.user_group_not_found')]));
//        }
//        return Redirect::route('users.edit', ["id" => $user_id])
//                        ->withMessage(Config::get('acl_messages.flash.success.user_group_add_success'));
    }

}
