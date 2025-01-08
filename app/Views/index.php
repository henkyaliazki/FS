<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Inventaris</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            position: fixed;
        }
        .sidebar a {
            text-decoration: none;
            color: #fff;
            display: block;
            margin: 10px 0;
        }
        .sidebar a:hover {
            background-color: #495057;
            border-radius: 5px;
            padding-left: 10px;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
        }
    </style>
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <h2 class="text-center">Inventaris</h2>
    <hr>
    <a href="/inventory"><i class="fas fa-box"></i> Dashboard</a>
    <a href="/barang-masuk"><i class="fas fa-download"></i> Laporan Barang Masuk</a>
    <a href="/barang-keluar"><i class="fas fa-upload"></i> Laporan Barang Keluar</a>
    <a href="/jumlah-barang"><i class="fas fa-warehouse"></i> Jumlah Barang</a>
    <hr>
    <a href="/login"><i class="fas fa-sign-in-alt"></i> Login</a>
    <a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Content -->
<div class="content">
    <h1 class="text-center mb-4">Dashboard Inventaris Barang</h1>
    <?php if (session()->getFlashdata('success')) : ?>
        <div class="alert alert-success">
            <?= session()->getFlashdata('success') ?>
        </div>
    <?php endif; ?>
    <div class="d-flex justify-content-between mb-3">
        <h3 class="mb-0">Daftar Barang</h3>
        <a href="/add" class="btn btn-success"><i class="fas fa-plus"></i> Tambah Barang</a>
    </div>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Nama Barang</th>
            <th>Jumlah</th>
            <th>Harga</th>
            <th>Aksi</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($inventory as $item): ?>
            <tr>
                <td><?= $item['id'] ?></td>
                <td><?= $item['name'] ?></td>
                <td><?= $item['quantity'] ?></td>
                <td>Rp <?= number_format($item['price'], 0, ',', '.') ?></td>
                <td>
                    <a href="/edit/<?= $item['id'] ?>" class="btn btn-primary btn-sm">
                        <i class="fas fa-edit"></i> Edit
                    </a>
                    <a href="/delete/<?= $item['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus barang ini?')">
                        <i class="fas fa-trash"></i> Hapus
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
