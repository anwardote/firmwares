<?php

namespace LaravelAcl\Authentication\Helpers;

/**
 * Class FormHelper
 *
 * @author jacopo beschi jacopo@jacopobeschi.com
 */
use LaravelAcl\Authentication\Repository\EloquentPermissionRepository as PermissionRepository;
use LaravelAcl\Authentication\Repository\SentryGroupRepository;
use App\Repositories\CountryRepository;
use App\Repositories\FcategoryRepository;
use App\Repositories\DeviceRepository;

class FormHelper {

    /**
     * @var \LaravelAcl\Authentication\Repository\EloquentPermissionRepository
     */
    protected $repository_permission;

    /**
     * @var \LaravelAcl\Authentication\Repository\SentryGroupRepository
     */
    protected $repository_groups;
    protected $repository_countries;
    protected $repository_fcategories;
    protected $repository_device;

    public function __construct(PermissionRepository $rp = null, SentryGroupRepository $rg = null, CountryRepository $cr = null, FcategoryRepository $fcr = null, DeviceRepository $dr = null) {
        $this->repository_permission = $rp ? $rp : new PermissionRepository();
        $this->repository_groups = $rg ? $rg : new SentryGroupRepository();
        $this->repository_countries = $cr ? $cr : new CountryRepository();
        $this->repository_fcategories = $fcr ? $fcr : new FcategoryRepository();
        $this->repository_device = $dr ? $dr : new DeviceRepository();
    }

    public function getSelectValues($repo_name, $key_value, $value_value) {
        $all_objects = $this->{$repo_name}->all();

        if ($all_objects->isEmpty())
            return [];

        foreach ($all_objects as $object)
            $array_values[$object->{$key_value}] = $object->{$value_value};

        return $array_values;
    }

    public function getSelectValuesPermission() {
        return $this->getSelectValues("repository_permission", 'permission', 'description');
    }

    public function getSelectValuesGroups() {
        return $this->getSelectValues("repository_groups", 'id', 'name');
    }

    /**
     * Prepares permission for sentry given the input
     *
     * @param array $input
     * @param       $operation
     * @param       $field_name
     * @return void
     */
    public function prepareSentryPermissionInput(array &$input, $operation, $field_name = "permissions") {
        $input[$field_name] = isset($input[$field_name]) ? [$input[$field_name] => $operation] : '';
    }

    public function getSelectCountryOutputValues() {
        return $this->getSelectValues("repository_countries", 'id', 'country_name');
    }

    public function getSelectfcategoryOutputValues() {
        return $this->getSelectValues("repository_fcategories", 'id', 'title');
    }

    public function getSelectdeviceOutputValues() {
        return $this->getSelectValues("repository_device", 'id', 'name');
    }

    public function getSelectstatusOutputValues() {
        return $this->getSelectStatusValues();
    }

    public function getSelectStatusValues() {
        $status_output_array = array("PUBLISHED" => "Published", "DRAFT" => "Draft", "PENDING" => "Pending", "HIDDEN" => "Hidden");
        foreach ($status_output_array as $key => $val)
            $array_values[$key] = $val;

        return $array_values;
    }

}
