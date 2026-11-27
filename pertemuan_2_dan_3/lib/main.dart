import 'package:flutter/material.dart';
// Import file kartu mahasiswa yang baru saja dibuat
import 'kartu_mahasiswa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PraktikumScreen(),
    );
  }
}

class PraktikumScreen extends StatelessWidget {
  const PraktikumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Latar belakang warna pastel (contoh: Ungu pastel / Lavender)
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        title: const Text('Tugas Praktikum'),
        backgroundColor: Colors.purple[200],
      ),
      // Memposisikan kartu di tengah layar (Center)
      body: const Center(
        // Memanggil widget KartuMahasiswa dan mengisi parameternya
        child: KartuMahasiswa(
          nama: 'Bintang', // Silakan ganti dengan nama lengkap Anda
          nim: '1234567890', // Ganti dengan NIM Anda
          programStudi: 'Informatika', // Ganti dengan prodi Anda
        ),
      ),
    );
  }
}