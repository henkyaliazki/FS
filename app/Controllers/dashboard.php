<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\UserModel;
// library excel
// use PhpOffice\PhpSpreadsheet\Spreadsheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// library pdf
use Dompdf\Dompdf;

class Dashboard extends Controller
{
    
    public function index()
    {
        $model = new UserModel();
        if (session()->get('username') == '') {
            session()->setFlashdata('gagal', 'Anda belum login');
            return redirect()->to(base_url('/login'));
        }

        // Configuration for Pagination
        $pager = \Config\Services::pager();
        $perPage = 10; // Number of records per page

        // Get current page number from the query string
        $keyword = $this->request->getVar('keyword');
        $currentPage = $this->request->getVar('page') ? $this->request->getVar('page') : 1;

        if ($keyword) {
            $model = $model->search($keyword);
        }

        // Fetch records for the current page
        $data['getData'] = $model->paginate($perPage, 'default', $currentPage);
        $data['pager'] = $model->pager;
        $data['keyword'] = $keyword;

        return view('dashboard',$data);
    }

    // generate excel
    // public function export()
    // {
    //     $userModel = new UserModel();
    //     $users = $userModel->DataAll();

    //     $spreadsheet = new Spreadsheet();

    //     $spreadsheet->setActiveSheetIndex(0)
    //         ->setCellValue('A1', 'Nama')
    //         ->setCellValue('B1', 'Agama')
    //         ->setCellValue('C1', 'Tempat Lahir')
    //         ->setCellValue('D1', 'Tinggi Badan')
    //         ->setCellValue('E1', 'Berat Badan')
    //         ->setCellValue('F1', 'Nama Hubungan')
    //         ->setCellValue('G1', 'Jenis Dokumen')
    //         ->setCellValue('H1', 'Nomor Dokumen')
    //         ->setCellValue('I1', 'Hobby')
    //         ->setCellValue('J1', 'Alamat');

    //     $column = 2;

    //     foreach ($users as $user) {
    //         $spreadsheet->setActiveSheetIndex(0)
    //             ->setCellValue('A' . $column, $user['NAMA'])
    //             ->setCellValue('B' . $column, $user['AGAMA'])
    //             ->setCellValue('C' . $column, $user['TEMPATLAHIR'])
    //             ->setCellValue('D' . $column, $user['TINGGIBADAN'])
    //             ->setCellValue('E' . $column, $user['BERATBADAN'])
    //             ->setCellValue('F' . $column, $user['NAMAHUBUNGAN'])
    //             ->setCellValue('G' . $column, $user['JENIS_DOKUMEN'])
    //             ->setCellValue('H' . $column, $user['NOMOR_DOKUMEN'])
    //             ->setCellValue('I' . $column, $user['NAMAHOBBY'])
    //             ->setCellValue('J' . $column, $user['ALAMAT']);

    //         $column++;
    //     }

    //     $writer = new Xlsx($spreadsheet);
    //     $filename = date('Y-m-d-His'). '-Data-User';

    //     header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    //     header('Content-Disposition: attachment;filename=' . $filename . '.xlsx');
    //     header('Cache-Control: max-age=0');

    //     $writer->save('php://output');
    // }

    // generate pdf
    public function generate()
    {
        // Buat nama file dengan format waktu saat ini
        $filename = date('y-m-d-H-i-s') . '-Extract Data.pdf';

        // Instantiate and use the dompdf class
        $dompdf = new Dompdf();

        // Dapatkan data dari model
        $model = new UserModel();
        $data['getData'] = $model->DataAll();

        // Load HTML content
        $dompdf->loadHtml(view('desainpdf', $data));

        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper('A4', 'landscape');

        // Render HTML as PDF
        $dompdf->render();

        // Output the generated PDF
        $dompdf->stream($filename);
    }

    public function profile()
    {
        return view('profile');
    }

    public function saveadd()
	{
		if (!$this->validate([
			'berkas' => [
				'rules' => 'uploaded[berkas]|mime_in[berkas,image/jpg,image/jpeg,image/gif,image/png]|max_size[berkas,2048]',
				'errors' => [
					'uploaded' => 'Harus Ada File yang diupload',
					'mime_in' => 'File Extention Harus Berupa jpg,jpeg,gif,png',
					'max_size' => 'Ukuran File Maksimal 2 MB'
				]
 
			]
		])) {
			session()->setFlashdata('error', $this->validator->listErrors());
			return redirect()->back()->withInput();
		}
        
		$berkas = new UserModel();
		$dataBerkas = $this->request->getFile('berkas');
		// $fileName = $dataBerkas->getRandomName();
        $data = array(
            'NAMA' => $this->request->getPost('nama'),
            'AGAMA' => $this->request->getPost('agama'),
            'TEMPATLAHIR' => $this->request->getPost('tempatlahir'),
            'TINGGIBADAN' => $this->request->getPost('tinggibadan'),
            'BERATBADAN' => $this->request->getPost('beratbadan'),
            'NAMAHUBUNGAN' => $this->request->getPost('namahubungan'),
            'JENIS_DOKUMEN' => $this->request->getPost('jenisdokumen'),
            'NOMOR_DOKUMEN' => $this->request->getPost('nomordokumen'),
            'NAMAHOBBY' => $this->request->getPost('hobby'),
            'BERKAS' => $dataBerkas,
            'ALAMAT' => $this->request->getPost('alamat')
        );
        $berkas->saveData($data);
        $dataBerkas->move('uploads/berkas/', $dataBerkas);
		session()->setFlashdata('success', 'Berhasil Save');
		return redirect()->to(base_url('profile'));
	}
}
