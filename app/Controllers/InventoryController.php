<?php

namespace App\Controllers;

use App\Models\InventoryModel;

class InventoryController extends BaseController
{
    // Menampilkan halaman utama
    public function index()
    {
        $model = new InventoryModel();
        $data['inventory'] = $model->getInventory();
        return view('index', $data);
    }

    // Menambahkan barang baru
    public function add()
    {
        if ($this->request->getMethod() === 'post') {
            $data = [
                'name' => $this->request->getPost('name'),
                'quantity' => $this->request->getPost('quantity'),
                'price' => $this->request->getPost('price'),
            ];

            $model = new InventoryModel();
            if ($model->addItem($data)) {
                session()->setFlashdata('success', 'Barang berhasil ditambahkan!');
            } else {
                session()->setFlashdata('error', 'Gagal menambahkan barang.');
            }

            return redirect()->to('/');
        }

        return view('add');
    }

    // Mengedit barang berdasarkan ID
    public function edit($id)
    {
        $model = new InventoryModel();
        $inventory = $model->getInventory();
        $item = null;

        // Mencari item berdasarkan ID
        foreach ($inventory as $i) {
            if ($i['id'] == $id) {
                $item = $i;
                break;
            }
        }

        if (!$item) {
            session()->setFlashdata('error', 'Barang tidak ditemukan.');
            return redirect()->to('/');
        }

        if ($this->request->getMethod() === 'post') {
            $data = [
                'name' => $this->request->getPost('name'),
                'quantity' => $this->request->getPost('quantity'),
                'price' => $this->request->getPost('price'),
            ];

            if ($model->editItem($id, $data)) {
                session()->setFlashdata('success', 'Barang berhasil diperbarui!');
            } else {
                session()->setFlashdata('error', 'Gagal memperbarui barang.');
            }

            return redirect()->to('index');
        }

        return view('edit', ['item' => $item]);
    }

    // Menghapus barang berdasarkan ID
    public function delete($id)
    {
        $model = new InventoryModel();
        $model->deleteItem($id);
        session()->setFlashdata('success', 'Barang berhasil dihapus!');
        return redirect()->to('/');
    }
}
