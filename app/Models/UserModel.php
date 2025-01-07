<?php

namespace App\Models;

use CodeIgniter\Model;


class UserModel extends Model
{
    // protected $table = 'tbl_pendaftaran';
    protected $table = 'tbl_pendaftaran'; // Nama tabel
    // protected $primaryKey = 'id_pendaftaran'; // Primary key
    // protected $returnType = 'array';
    // protected $allowedFields = ['NAMA', 'AGAMA']; // Sesuaikan dengan field tabel Anda


    public function get_data($username, $password)
	{
      return $this->db->table('tbl_pendaftaran')
      ->where(array('username' => $username, 'password' => $password))
      ->get()->getRowArray();
	}

    public function DataAll($id = false)
    {
        if($id === false){
            return $this->findAll();
        }else{
            return $this->where(['id_pendaftaran' => $id])->first();
        }   
    }

    

    public function saveData($data)
    {
        $builder = $this->db->table($this->table);
        $builder->insert($data);

        header("Location: /");
        exit();
    }
}
