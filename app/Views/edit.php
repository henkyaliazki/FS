<h1>Edit Barang</h1>
<form method="post">
    <label for="name">Nama Barang:</label>
    <input type="text" name="name" value="<?= $item['name'] ?>" required><br>
    <label for="quantity">Jumlah:</label>
    <input type="number" name="quantity" value="<?= $item['quantity'] ?>" required><br>
    <label for="price">Harga:</label>
    <input type="number" name="price" value="<?= $item['price'] ?>" required><br>
    <button type="submit">Simpan</button>
</form>
