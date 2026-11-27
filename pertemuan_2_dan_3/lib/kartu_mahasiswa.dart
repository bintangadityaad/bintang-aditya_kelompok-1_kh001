import 'package:flutter/material.dart';

class KartuMahasiswa extends StatelessWidget {
  // 3 parameter wajib
  final String nama;
  final String nim;
  final String programStudi;

  // Constructor yang mewajibkan ke-3 parameter diisi (required)
  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.programStudi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Lebar container 320.0
      width: 320.0,
      padding: const EdgeInsets.all(24.0), // Padding agar teks tidak menempel di tepi
      decoration: BoxDecoration(
        // Latar belakang putih
        color: Colors.white,
        // Sudut melengkung 16.0
        borderRadius: BorderRadius.circular(16.0),
        // Bayangan halus (box shadow)
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        // mainAxisSize.min agar tinggi kartu menyesuaikan isi kontennya
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'KARTU MAHASISWA',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20), // Jarak antara judul dan identitas

          // Identitas yang dipisahkan oleh Divider()
          Text(
            'Nama:\n$nama',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(height: 24, thickness: 1), // Pemisah

          Text(
            'NIM:\n$nim',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(height: 24, thickness: 1), // Pemisah

          Text(
            'Program Studi:\n$programStudi',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}