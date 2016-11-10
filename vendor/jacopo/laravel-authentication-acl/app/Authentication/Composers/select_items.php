<?php

use LaravelAcl\Authentication\Helpers\FormHelper;

/**
 * permission select
 */
View::composer(['laravel-authentication-acl::admin.user.edit', 'laravel-authentication-acl::admin.group.edit'], function ($view) {
    $fh = new FormHelper();
    $values_permission = $fh->getSelectValuesPermission();
    $view->with('permission_values', $values_permission);
});
/**
 * group select
 */
View::composer(['laravel-authentication-acl::admin.user.edit', 'laravel-authentication-acl::admin.group.edit',
    'laravel-authentication-acl::admin.user.search'], function ($view) {
    $fh = new FormHelper();
    $values_group = $fh->getSelectValuesGroups();
    $view->with('group_values', $values_group);
});

/**
 * firmware output select
 */
View::composer([
    'laravel-authentication-acl::admin.firmware.new',
    'laravel-authentication-acl::admin.firmware.edit'
        ], function ($view) {
    $fh = new FormHelper();
    $values_country_output = $fh->getSelectCountryOutputValues();
    $view->with('country_output_values', $values_country_output);
});

/**
 * Fcategory output select
 */
View::composer([
    'laravel-authentication-acl::admin.firmware.new',
    'laravel-authentication-acl::admin.firmware.edit'
        ], function ($view) {
    $fh = new FormHelper();
    $values_fcategory_output = $fh->getSelectfcategoryOutputValues();
    $view->with('fcategory_output_values', $values_fcategory_output);
});

/**
 * Device output select
 */
View::composer([
    'laravel-authentication-acl::admin.firmware.new',
    'laravel-authentication-acl::admin.firmware.edit'
        ], function ($view) {
    $fh = new FormHelper();
    $values_device_output = $fh->getSelectdeviceOutputValues();
    $view->with('device_output_values', $values_device_output);
});


/**
 * Device output select
 */
View::composer([
    'laravel-authentication-acl::admin.firmware.new',
    'laravel-authentication-acl::admin.firmware.edit'
        ], function ($view) {
    $fh = new FormHelper();
    $values_status_output = $fh->getSelectstatusOutputValues();
    $view->with('status_values', $values_status_output);
});