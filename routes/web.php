<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | This file is where you may define all of the routes that are handled
  | by your application. Just tell Laravel the URIs it should respond
  | to using a Closure or controller method. Build something great!
  |
 */

Route::group(['prefix' => ''], function () {
    Route::get('/', [
        'middleware' => array('can_see'),
        'as' => 'home',
        'uses' => 'HomeController@getIndex']);

    Route::get('/tutorials', [
        'middleware' => array('can_see'),
        'as' => 'tutorials',
        'uses' => 'TutorialsController@getIndex']);

    Route::get('/firmwares', [
        'middleware' => array('can_see'),
        'as' => 'firmwares',
        'uses' => 'FirmwaresController@getIndex']);

    Route::get('/drivers', [
        'middleware' => array('can_see'),
        'as' => 'drivers',
        'uses' => 'DriversController@getIndex']);

    Route::get('/tools', [
        'middleware' => array('can_see'),
        'as' => 'tools',
        'uses' => 'ToolsController@getIndex']);

    Route::get('/contact-us', [
        'middleware' => array('can_see'),
        'as' => 'contact.form',
        'uses' => 'ContactController@create']);
    Route::post('/contact-us', [
        'middleware' => array('can_see'),
        'as' => 'contact.store',
        'uses' => 'ContactController@store']);
});


Route::group(['prefix' => 'admin'], function () {

    Route::get('/home', [
        'middleware' => 'has_perm:_superadmin,_user-editor',
        'as' => 'home.new',
        'uses' => 'HomeController@postNew']);

    Route::get('/home', [
        'middleware' => 'has_perm:_superadmin,_user-editor',
        'as' => 'home.edit',
        'uses' => 'HomeController@getEdit']);

    Route::get('/home', [
        'middleware' => 'has_perm:_superadmin,_user-editor',
        'as' => 'home.edit',
        'uses' => 'HomeController@postEdit']);

    Route::get('/home', [
        'middleware' => array('can_see'),
        'as' => 'home',
        'uses' => 'HomeController@getIndex']);

    Route::get('/tutorials', [
        'middleware' => array('can_see'),
        'as' => 'tutorials',
        'uses' => 'TutorialsController@getIndex']);

    Route::get('/firmware/list', [
        'middleware' => array('can_see'),
        'as' => 'firmware.list',
        'uses' => 'FirmwaresController@getAdminList']);
    
    Route::get('/firmware/new', [
        'middleware' => array('can_see'),
        'as' => 'firmware.new',
        'uses' => 'FirmwaresController@getNew']);
    
      Route::post('/firmware/new', [
        'middleware' => array('can_see'),
        'as' => 'firmware.new',
        'uses' => 'FirmwaresController@postNew']);  

    Route::get('/drivers', [
        'middleware' => array('can_see'),
        'as' => 'drivers',
        'uses' => 'DriversController@getIndex']);

    Route::get('/tools', [
        'middleware' => array('can_see'),
        'as' => 'tools',
        'uses' => 'ToolsController@getIndex']);

    Route::get('/contact-us', [
        'middleware' => array('can_see'),
        'as' => 'contact.form',
        'uses' => 'ContactController@create']);
    Route::post('/contact-us', [
        'middleware' => array('can_see'),
        'as' => 'contact.store',
        'uses' => 'ContactController@store']);
});


