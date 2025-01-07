<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Daftar</title>
    <link rel="stylesheet" href="<?= base_url('css/bootstrap.min.css') ?>">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
 
 <!-- <a class="navbar-brand" href="#"></a> -->
 <img src="<?= base_url('image/undira.png')?>" class="navbar-brand" width="10%">

 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
 </button>

 <div class="collapse navbar-collapse" id="navbarSupportedContent">

   <ul class="navbar-nav mr-auto">
     <li class="nav-item active">
       <a class="nav-link" href="<?= base_url('/') ?>">Home <span class="sr-only">(current)</span></a>
     </li>
   </ul>

   <span class="navbar-text mr-3">
     Silahkan daftar akun
   </span>

   <!-- <a href="#" class="btn btn-outline-success mr-2">Login</a> -->
   <a href="<?= base_url('daftar') ?>" class="btn btn-outline-danger">Daftar</a>

 </div>
</nav>
<div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="margin-top:100px;">
            <form style="border: 1px solid #000; border-radius: 5px; margin: 0 auto; padding: 20px;">
                <h4 style="text-align:center;">Pendaftaran</h4>
                <div class="row">
                    <div class="col-md-6">
                        <label>Nama Anda</label>
                        <input type="text" name="namaanda" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Nama Anda" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Agama</label>
                        <input type="text" name="Agama" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Agama" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Tempat Lahir</label>
                        <input type="text" name="tempatlahir" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Tempat Lahir" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Tinggi Badan</label>
                        <input type="text" name="tinggibadan" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Tinggi Badan" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Berat Badan</label>
                        <input type="text" name="beratbadan" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Berat Badan" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Status Hubungan</label>
                        <input type="text" name="statushubungan" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Status Hubungan" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Jenis Dokumen</label>
                        <input type="text" name="jenisdokumen" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Jenis Dokumen" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Nomor Dokumen</label>
                        <input type="text" name="nomordokumen" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Nomor Dokumen" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Hobby</label>
                        <input type="text" name="hobby" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Hobby" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Username</label>
                        <input type="text" name="username" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Username" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label>Password</label>
                        <input type="password" name="password" style="display: block; width: 100%; padding: 10px; margin-bottom: 10px;" placeholder="Password" class="form-control" required>
                    </div>
                    <div class="col-md-12">
                        <label>Alamat</label>
                        <textarea name="alamat" required class="form-control" cols="20" rows="5" placeholder="Alamat"></textarea>
                    </div>
                </div>
                <br>
                <input type="submit" class="btn btn-danger col-md-12" value="Register" style=" display: block;
            width: 100%;
            padding: 10px;">
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
</body>
</html>