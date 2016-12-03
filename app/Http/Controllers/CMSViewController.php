<?php

namespace LaravelAcl\Authentication\Controllers;

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use phpDocumentor\Reflection\Types\Array_;
use view,
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
use App\Http\Models\CmsPage;
use App\Http\Models\CmsPost;
use App\Http\Models\CmsCategory;
use App\Repositories\CmsPageRepository;

use App\Http\Models\Firmware;
use App\Http\Models\Driver;
use App\Http\Models\Tool;
use App\Http\Models\Tutorial;
use App\Http\Models\ViewCategory;


class CMSViewController extends Controller {

    protected $auth;
    protected $cmsPageRepository;

    public function __construct(AuthenticateInterface $auth, CmsPageRepository $CmsPageRepo) {

        $this->auth = $auth;
        $this->cmsPageRepository=$CmsPageRepo;
    }

    public function getHomePage() {
        $logged_user = $this->auth->getLoggedUser();

        $page=$this->cmsPageRepository->findBySlugOrId('home');
        $sliders='';
        if($page->banner_type=='slider'){
            $sliders = CmsPost::where([['cms_category_id', 6], ['status', 'PUBLISHED']])->get();
        }
        $home = CmsPost::where([['cms_category_id', 1], ['status', 'PUBLISHED']])->get();
        return View::make('admin.pages.page')->with(['user_data' => $logged_user, 'sliders' => $sliders, 'page' => $page, 'home_rows' => $home]);
    }

    public function getFirmwarePage() {
        $logged_user = $this->auth->getLoggedUser();

        $page=$this->cmsPageRepository->findBySlugOrId('firmware');
        $sliders='';
        if($page->banner_type=='slider'){
            $sliders = CmsPost::where([['cms_category_id', 7], ['status', 'PUBLISHED']])->get();
        }
        $cms_Post = CmsPost::where([['cms_category_id', 2], ['status', 'PUBLISHED']])->get();
       // $android=Firmware::where([['fcategory_id', 1],['status', 'PUBLISHED']])->take(4)->get();
       // $normal=Firmware::where([['fcategory_id', 2],['status', 'PUBLISHED']])->take(4)->get();
         $android=ViewCategory::where('fcategory_id', 1)->take(7)->orderBy('created_at', 'desc')->get();
         $normal=ViewCategory::where('fcategory_id', 2)->take(7)->orderBy('created_at', 'desc')->get();

        $androidShowAll='';
        $normalShowAll='';
        if(count($android)>6){
            $androidShowAll=true;
            unset($android[6]);
        }
        if(count($normal)>6){
            $normalShowAll=true;
            unset($normal[6]);
        }
        return View::make('admin.pages.firmware')->with(['user_data' => $logged_user, 'sliders' => $sliders, 'page' => $page, 'cms_post' => $cms_Post, 'android'=>$android, 'normal'=>$normal, 'androidShowAll'=>$androidShowAll, 'normalShowAll'=>$normalShowAll]);
    }

    public function howtouse() {
        $page = Page::findBySlugOrId('how-to-use-hub');
        return View::make('admin.pages.howtouse')->with(['page' => $page->withFakes()]);
    }

    public function encourageactivation() {
        $page = Page::findBySlugOrId('encourage-activation');
        return View::make('admin.pages.encourageactivation')->with(['page' => $page->withFakes()]);
    }

    public function brandassets() {
        $page = Page::findBySlugOrId('brand-assets');
        $logos = Article::where([['category_id', 2], ['status', 'PUBLISHED']])->get();
        $items = Article::where([['category_id', 5], ['status', 'PUBLISHED']])->get();
        return View::make('admin.pages.brandassets')->with(['page' => $page->withFakes(), 'logos' => $logos, 'items' => $items]);
    }

    public function promoteutilization() {
        $authentication = \App::make('authentication_helper');
        $auth = \App::make('authenticator');
        $user = $auth->getLoggedUser();

        $videos = Article::where([['category_id', 3], ['status', 'PUBLISHED']])->get();
        $materials = Article::where([['category_id', 6], ['status', 'PUBLISHED']])->get();
        $page = Page::findBySlugOrId('promote-utilization');
        return View::make('admin.pages.promoteutilization')->with(['user' => $user, 'page' => $page->withFakes(), 'videos' => $videos, 'materials' => $materials]);
    }

    public function newsmedia() {
        $authentication = \App::make('authentication_helper');
        $auth = \App::make('authenticator');
        $user = $auth->getLoggedUser();

        $videos = Article::where([['category_id', 3], ['status', 'PUBLISHED']])->get();
        $materials = Article::where([['category_id', 6], ['status', 'PUBLISHED']])->get();
        $page = Page::findBySlugOrId('promote-utilization');
        return View::make('admin.pages.news-media')->with(['user' => $user, 'page' => $page->withFakes(), 'videos' => $videos, 'materials' => $materials]);
    }

    public function resources() {
        $page = Page::findBySlugOrId('resources');
        return View::make('admin.pages.resources')->with(['page' => $page->withFakes()]);
    }

}
