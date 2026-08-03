import 'package:flutter/material.dart';

class Menu1Tugas7 extends StatefulWidget {
  const Menu1Tugas7({super.key});

  @override
  State<Menu1Tugas7> createState() => _Menu1Tugas7State();
}

class _Menu1Tugas7State extends State<Menu1Tugas7> {
  bool _checker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(20)),
          Text(
            "Ketentuan Umum dan Persyaratan BerkasSetiap pendaftar wajib memenuhi kriteria umum dengan menunjukkan identitas resmi berupa Kartu Tanda Penduduk (KTP) atau kartu identitas anak yang masih berlaku. Seluruh kolom dalam formulir pendaftaran digital harus diisi menggunakan data diri yang sebenarnya, lengkap, dan tidak direkayasa. Selain itu, pendaftar diwajibkan untuk mengunggah dokumen pendukung seperti pas foto terbaru dan salinan digital kartu identitas dengan format serta ukuran berkas yang telah ditentukan oleh sistem.Prosedur, Batas Waktu, dan Validasi DataProses pendaftaran dinyatakan selesai dan sah apabila seluruh data serta berkas pendukung telah berhasil dikirimkan ke dalam sistem sebelum batas waktu yang ditentukan berakhir. Pihak panitia atau pengelola memiliki hak penuh untuk melakukan verifikasi mendalam terhadap berkas yang masuk. Apabila ditemukan ketidaksesuaian data, dokumen yang tidak lengkap, atau indikasi pemalsuan informasi, pihak pengelola berhak membatalkan atau menolak pendaftaran tersebut secara sepihak tanpa kewajiban memberikan ganti rugi.Pernyataan Persetujuan dan Kebijakan DataDengan menekan tombol daftar atau menandai kotak persetujuan, pendaftar secara sadar menyatakan bahwa seluruh informasi yang diberikan adalah benar dan dapat dipertanggungjawabkan. Pendaftar juga mengakui telah membaca, memahami, dan menyetujui seluruh aturan, ketentuan layanan, serta kebijakan privasi yang berlaku. Seluruh data pribadi yang dikumpulkan dalam proses ini akan dijaga kerahasiaannya dan hanya digunakan untuk keperluan administrasi pendaftaran.",
            textAlign: TextAlign.justify,
          ),
          Text("Saya Menyetujui persyaratan ini"),
          Checkbox(
            value: _checker,
            onChanged: (value) {
              setState(() {
                _checker = value ?? false;
              });
            },
          ),
          Text(
            _checker
                ? "Pendaftaran diperbolehkan"
                : "Pendaftaran belum tersedia",
          ),
        ],
      ),
    );
  }
}
