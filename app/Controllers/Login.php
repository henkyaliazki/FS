<?php

namespace App\Controllers;

use App\Models\UserModel;
use CodeIgniter\Controller;


class Login extends Controller
{
    public function index()
    {
        // Load view login
        return view('halaman_depan');
    }

    public function auth()
    {
        $muser = new UserModel();

        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

        $cek = $muser->get_data($username, $password);

        if ($cek !== null && isset($cek['username']) && isset($cek['password']) && $cek['username'] == $username && $cek['password'] == $password)
        {
            session()->set('username', $cek['username']);
            return redirect()->to(base_url('/dashboard'));
        } else {
            session()->setFlashdata('msg', 'Username / Password salah');
            return redirect()->to(base_url('/login'));
        }
    }
    
    public function logout()
    {
        session()->destroy();
        return redirect()->to(base_url('login'));
    }
}
