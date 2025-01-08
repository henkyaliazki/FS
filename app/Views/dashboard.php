<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Dashboard</title>
</head>
<body>
<h1>Inventory Dashboard</h1>
<a href="/add">Tambah Barang</a>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nama</th>
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
            <td><?= $item['price'] ?></td>
            <td>
                <a href="/edit/<?= $item['id'] ?>">Edit</a> |
                <a href="/delete/<?= $item['id'] ?>">Hapus</a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</body>
</html>
