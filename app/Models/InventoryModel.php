<?php

namespace App\Models;

use CodeIgniter\Model;

class InventoryModel extends Model
{
    protected $jsonFilePath = WRITEPATH . 'data/datas.json';

    public function isJsonFileValid()
    {
        if (!is_writable($this->jsonFilePath)) {
            log_message('error', 'File JSON tidak memiliki izin tulis.');
            return false;
        }

        $content = file_get_contents($this->jsonFilePath);
        json_decode($content);
        if (json_last_error() !== JSON_ERROR_NONE) {
            log_message('error', 'Struktur JSON tidak valid: ' . json_last_error_msg());
            return false;
        }

        return true;
    }

    // Mengambil semua data barang
    public function getInventory()
    {
        if (!file_exists($this->jsonFilePath)) {
            // Jika file tidak ada, buat file JSON kosong
            file_put_contents($this->jsonFilePath, json_encode([], JSON_PRETTY_PRINT));
        }
        $data = json_decode(file_get_contents($this->jsonFilePath), true);
        return $data ?: [];
    }

    public function addItem($data)
    {
        log_message('debug', 'Memulai proses menambah barang.');

        $inventory = $this->getInventory();
        log_message('debug', 'Inventory saat ini: ' . json_encode($inventory));

        $id = count($inventory) + 1; // ID otomatis
        $data['id'] = $id;
        $inventory[] = $data;

        $result = file_put_contents($this->jsonFilePath, json_encode($inventory, JSON_PRETTY_PRINT));

        if (!$result) {
            log_message('error', 'Gagal menulis data ke file JSON.');
            return false;
        }

        if (!$this->isJsonFileValid()) {
            log_message('error', 'File JSON tidak valid setelah penulisan.');
            return false;
        }

        log_message('debug', 'Inventory setelah penambahan: ' . json_encode($inventory));
        return true;
    }

    public function editItem($id, $data)
    {
        if (!$this->isJsonFileValid()) {
            return false;
        }

        $inventory = $this->getInventory();
        foreach ($inventory as &$item) {
            if ($item['id'] == $id) {
                $item = array_merge($item, $data); // Perbarui data
                break;
            }
        }

        // Menulis ulang ke file JSON
        $result = file_put_contents($this->jsonFilePath, json_encode($inventory, JSON_PRETTY_PRINT));


        if (!$result) {
            log_message('error', 'Gagal menulis data ke file JSON.');
            return false; // Jika gagal, kembalikan false
        }

        return true;
    }

    // Menghapus barang berdasarkan ID
    public function deleteItem($id)
    {
        $inventory = $this->getInventory();
        $inventory = array_filter($inventory, function ($item) use ($id) {
            return $item['id'] != $id;
        });

        // Menyimpan kembali ke file JSON
        file_put_contents($this->jsonFilePath, json_encode(array_values($inventory), JSON_PRETTY_PRINT));
    }
}

