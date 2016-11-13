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
    /* START Formware */
    Route::get('/firmware/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_firmware-editor'),
        'as' => 'firmware.list',
        'uses' => 'FirmwaresController@getAdminList']);

    Route::get('/firmware/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_firmware-editor'),
        'as' => 'firmware.new',
        'uses' => 'FirmwaresController@getNew']);

    Route::post('/firmware/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_firmware-editor'),
        'as' => 'firmware.new',
        'uses' => 'FirmwaresController@postNew']);

    Route::get('/firmware/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_firmware-editor'),
        'as' => 'firmware.edit',
        'uses' => 'FirmwaresController@getUpdate']);

    Route::post('/firmware/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_firmware-editor'),
        'as' => 'firmware.edit',
        'uses' => 'FirmwaresController@postUpdate']);

    Route::get('/firmware/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'firmware.delete',
        'uses' => 'FirmwaresController@delete']);

    /* START Driver */
    Route::get('/driver/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_driver-editor'),
        'as' => 'driver.list',
        'uses' => 'DriversController@getAdminList']);

    Route::get('/driver/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_driver-editor'),
        'as' => 'driver.new',
        'uses' => 'DriversController@getNew']);

    Route::post('/driver/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_driver-editor'),
        'as' => 'driver.new',
        'uses' => 'DriversController@postNew']);

    Route::get('/driver/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_driver-editor'),
        'as' => 'driver.edit',
        'uses' => 'DriversController@getUpdate']);

    Route::post('/driver/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_driver-editor'),
        'as' => 'driver.edit',
        'uses' => 'DriversController@postUpdate']);

    Route::get('/driver/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'driver.delete',
        'uses' => 'DriversController@delete']);

    /* START Tool */
    Route::get('/tool/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tool-editor'),
        'as' => 'tool.list',
        'uses' => 'ToolsController@getAdminList']);

    Route::get('/tool/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tool-editor'),
        'as' => 'tool.new',
        'uses' => 'ToolsController@getNew']);

    Route::post('/tool/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tool-editor'),
        'as' => 'tool.new',
        'uses' => 'ToolsController@postNew']);

    Route::get('/tool/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tool-editor'),
        'as' => 'tool.edit',
        'uses' => 'ToolsController@getUpdate']);

    Route::post('/tool/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tool-editor'),
        'as' => 'tool.edit',
        'uses' => 'ToolsController@postUpdate']);

    Route::get('/tool/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'tool.delete',
        'uses' => 'ToolsController@delete']);

    /* Tutorial */
    Route::get('/tutorial/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tutorial-editor'),
        'as' => 'tutorial.list',
        'uses' => 'TutorialsController@getAdminList']);

    Route::get('/tutorial/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tutorial-editor'),
        'as' => 'tutorial.new',
        'uses' => 'TutorialsController@getNew']);

    Route::post('/tutorial/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tutorial-editor'),
        'as' => 'tutorial.new',
        'uses' => 'TutorialsController@postNew']);

    Route::get('/tutorial/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tutorial-editor'),
        'as' => 'tutorial.edit',
        'uses' => 'TutorialsController@getUpdate']);

    Route::post('/tutorial/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_tutorial-editor'),
        'as' => 'tutorial.edit',
        'uses' => 'TutorialsController@postUpdate']);

    Route::get('/tutorial/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'tutorial.delete',
        'uses' => 'TutorialsController@delete']);
});


Route::group(['prefix' => 'admin/setup'], function () {

    /* Setup device */
    Route::get('/device/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'device.list',
        'uses' => 'DevicesController@getList']);

    Route::get('/device/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'device.new',
        'uses' => 'DevicesController@getNew']);

    Route::post('/device/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'device.new',
        'uses' => 'DevicesController@postNew']);

    Route::get('/device/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'device.edit',
        'uses' => 'DevicesController@getUpdate']);

    Route::post('/device/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'device.edit',
        'uses' => 'DevicesController@postUpdate']);

    Route::get('/device/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'device.delete',
        'uses' => 'DevicesController@delete']);
    /* Setup drivers */
    Route::get('/driver-name/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-name.list',
        'uses' => 'DriverNamesController@getList']);

    Route::get('/driver-name/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-name.new',
        'uses' => 'DriverNamesController@getNew']);

    Route::post('/driver-name/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-name.new',
        'uses' => 'DriverNamesController@postNew']);

    Route::get('/driver-name/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-name.edit',
        'uses' => 'DriverNamesController@getUpdate']);

    Route::post('/driver-name/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-name.edit',
        'uses' => 'DriverNamesController@postUpdate']);

    Route::get('/driver-name/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'driver-name.delete',
        'uses' => 'DriverNamesController@delete']);
    /* Setup driver Type */
    Route::get('/driver-type/list', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-type.list',
        'uses' => 'DriverTypesController@getList']);

    Route::get('/driver-type/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-type.new',
        'uses' => 'DriverTypesController@getNew']);

    Route::post('/driver-type/new', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-type.new',
        'uses' => 'DriverTypesController@postNew']);

    Route::get('/driver-type/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-type.edit',
        'uses' => 'DriverTypesController@getUpdate']);

    Route::post('/driver-type/edit', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_setup'),
        'as' => 'driver-type.edit',
        'uses' => 'DriverTypesController@postUpdate']);

    Route::get('/driver-type/delete', [
        'middleware' => array('can_see', 'admin_logged', 'has_perm:_delete'),
        'as' => 'driver-type.delete',
        'uses' => 'DriverTypesController@delete']);
});
