<?php
// Sertakan file koneksi database
include 'db_connection.php';

// Contoh query ke database
$sql = "SELECT * FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Loop untuk menampilkan data
    while ($row = $result->fetch_assoc()) {
        echo "Nama: " . $row['name'] . " - Email: " . $row['email'] . "<br>";
    }
} else {
    echo "Tidak ada data.";
}
?>