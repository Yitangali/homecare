<?php
// Konfigurasi database
$host = "localhost";        // Nama host (biasanya localhost)
$username = "Budi Prasetyo";         // Username database (default: root untuk XAMPP)
$password = "";             // Password database (kosong untuk XAMPP)
$dbname = "db_homecare";  // Nama database yang ingin dihubungkan

// Membuat koneksi ke database
$conn = new mysqli($host, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>