<?php

namespace App\Repositories;

/**
 * Class ContentRepository
 *
 * @author Sahbaj Uddin
 */
use App\Http\Models\Device;
use Config,
    Event;

class DeviceRepository {

    /**
     * Sentry instance
     * @var
     */
    public function __construct() {
        
    }

    /**
     * Create a new object
     *
     * @return mixed
     * @override
     */
    public function create(array $input) {
        $data = array(
            "name" => $input["name"],
            "image" => $input["image"],
            "type" => $input["type"],
        );

//        try {            
//            $template = new Campaign;
//            $template->create($data);
//        } catch (CartaUserExists $e) {
//            throw new NotFoundException;
//        }
        $Device = new Device();
        $Device->create($data);
        return $Device;
    }

    /**
     * Update a new object
     *
     * @param       id
     * @param array $data
     * @return mixed
     */
    public function update($id, array $data) {
        $obj = $this->find($id);
        //  Event::fire('repository.updating', [$obj]);
        $obj->update($data);
        return $obj;
    }

    /**
     * Obtains all models
     *
     * @override
     * @param array $search_filters
     * @return mixed
     */
    public function all(array $search_filters = []) {

        $q = new Device();
        $per_page = Config::get('acl_base.countries_per_page');
        return $q->paginate($per_page);
    }

    /**
     * @param array $search_filters
     * @param       $q
     * @return mixed
     */
    protected function applySearchFilters(array $search_filters, $q) {
        if (isset($search_filters['name']) && $search_filters['name'] !== '')
            $q = $q->where('name', 'LIKE', "%{$search_filters['name']}%");
        return $q;
    }

    /**
     * Deletes a new object
     *
     * @param $id
     * @return mixed
     */
    public function delete($id) {
        $obj = $this->find($id);
        //   Event::fire('repository.deleting', [$obj]);
        return $obj->delete();
    }

    /**
     * Find a model by his id
     *
     * @param $id
     * @return mixed
     * @throws \LaravelAcl\Authentication\Exceptions\UserNotFoundException
     */
    public function find($id) {
        try {
            $Device = Device::find($id);
        } catch (GroupNotFoundException $e) {
            throw new NotFoundException;
        }

        return $Device;
    }

}