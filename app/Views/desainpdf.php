<!DOCTYPE html>
<html>
<head>
    <title>Extract Data</title>
    <style>
        /* Anda bisa menambahkan CSS khusus untuk tampilan PDF di sini */
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1 style="text-align:center;">Data User</h1>
    <table>
        <thead>
            <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Agama</th>
            <th>Tempat Lahir</th>
            <th>Tinggi Badan</th>
            <th>Berat Badan</th>
            <th>Nama Hubungan</th>
            <th>Jenis Dokumen</th>
            <th>Nomor Dokumen</th>
            <th>Hobby</th>
            <th>Alamat</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($getData as $row){ ?>
            <tr>
                <td><?= $no;?></td>
                <td><?=$row['NAMA'];?></td>
                <td><?=$row['AGAMA'];?></td>
                <td><?=$row['TEMPATLAHIR'];?></td>
                <td><?=$row['TINGGIBADAN'];?></td>
                <td><?=$row['BERATBADAN'];?></td>
                <td><?=$row['NAMAHUBUNGAN'];?></td>
                <td><?=$row['JENIS_DOKUMEN'];?></td>
                <td><?=$row['NOMOR_DOKUMEN'];?></td>
                <td><?=$row['NAMAHOBBY'];?></td>
                <td><?=$row['ALAMAT'];?></td>
            </tr>
            <?php $no++;} ?>
        </tbody>
    </table>
</body>
</html>
