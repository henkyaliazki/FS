<?php

namespace App\Controllers;

use App\Models\InventoryModel;

class InventoryController extends BaseController
{
    public function index()
    {
        $model = new InventoryModel();
        $data['inventory'] = $model->getInventory();
        return view('index', $data);
    }

    public function add()
    {
        if ($this->request->getMethod() == 'post') {
            $data = [
                'name' => $this->request->getPost('name'),
                'quantity' => $this->request->getPost('quantity'),
                'price' => $this->request->getPost('price')
            ];
            $model = new InventoryModel();
            $model->addItem($data);
            return redirect()->to('/');
        }
        return view('add');
    }

    public function edit($id)
    {
        $model = new InventoryModel();
        $inventory = $model->getInventory();
        $item = null;
        foreach ($inventory as $i) {
            if ($i['id'] == $id) {
                $item = $i;
                break;
            }
        }
        if (!$item) {
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
        }

        if ($this->request->getMethod() == 'post') {
            $data = [
                'name' => $this->request->getPost('name'),
                'quantity' => $this->request->getPost('quantity'),
                'price' => $this->request->getPost('price')
            ];
            $model->editItem($id, $data);
            return redirect()->to('/');
        }

        return view('edit', ['item' => $item]);
    }

    public function delete($id)
    {
        $model = new InventoryModel();
        $model->deleteItem($id);
        return redirect()->to('/');
    }
}
