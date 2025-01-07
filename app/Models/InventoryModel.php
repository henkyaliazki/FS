<?php

namespace App\Models;

use CodeIgniter\Model;

class InventoryModel extends Model
{
    protected $jsonFilePath = WRITEPATH . 'data/datas.json';  

    // Mengambil semua data barang
    public function getInventory()
    {
        $data = json_decode(file_get_contents($this->jsonFilePath), true);
        return $data;
    }

    // Menambahkan barang baru
    public function addItem($data)
    {
        $inventory = $this->getInventory();
        $id = count($inventory) + 1;
        $data['id'] = $id;
        $inventory[] = $data;
        file_put_contents($this->jsonFilePath, json_encode($inventory, JSON_PRETTY_PRINT));
        return $data;
    }

    // Mengedit barang berdasarkan ID
    public function editItem($id, $data)
    {
        $inventory = $this->getInventory();
        foreach ($inventory as &$item) {
            if ($item['id'] == $id) {
                $item = array_merge($item, $data);
                break;
            }
        }
        file_put_contents($this->jsonFilePath, json_encode($inventory, JSON_PRETTY_PRINT));
        return $data;
    }

    // Menghapus barang berdasarkan ID
    public function deleteItem($id)
    {
        $inventory = $this->getInventory();
        $inventory = array_filter($inventory, function ($item) use ($id) {
            return $item['id'] != $id;
        });
        file_put_contents($this->jsonFilePath, json_encode(array_values($inventory), JSON_PRETTY_PRINT));
    }
}
