<h1>Inventaris Barang</h1>
<a href="/inventory/add">Tambah Barang</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Jumlah</th>
        <th>Harga</th>
        <th>Aksi</th>
    </tr>
    <?php foreach ($inventory as $item): ?>
        <tr>
            <td><?= $item['id'] ?></td>
            <td><?= $item['name'] ?></td>
            <td><?= $item['quantity'] ?></td>
            <td><?= number_format($item['price'], 0, ',', '.') ?></td>
            <td>
                <a href="/edit/<?= $item['id'] ?>">Edit</a> | 
                <a href="/delete/<?= $item['id'] ?>">Hapus</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
