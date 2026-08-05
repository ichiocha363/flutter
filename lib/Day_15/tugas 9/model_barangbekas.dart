import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_15/tugas%209/barangbekas.dart';

class ListModeltugas9 extends StatelessWidget {
  ListModeltugas9({super.key});

  List<BarangBekas> dataProduk = [
    BarangBekas(
      nama: 'Kamera Analog',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz_yvCW18h4ra4UQdNEGXnpPOOpjUbjcwWsKp_Y8bjug&s=10',
      deskripsi: 'Kamera jadul dengan lensa manual, cocok untuk kolektor.',
    ),
    BarangBekas(
      nama: 'Radio Antik',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ29rpEhsSehXdyXTnSDdX2UEBQe_hb7WyGVUZ_JeNSFA&s=10',
      deskripsi: 'Radio tua masih berfungsi dengan suara klasik.',
    ),
    BarangBekas(
      nama: 'Mesin Ketik',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi1pR-Si1rpv0MdXCUHCoMwB8vQiqMbJsk_EQ52SYsaA&s=10',
      deskripsi: 'Mesin ketik mekanik untuk dekorasi atau koleksi retro.',
    ),
    BarangBekas(
      nama: 'Telepon Putar',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaE-FWYtKvhF4lHD-5pwnX_TY4STHtTbXIfs2k70zBrA&s=10',
      deskripsi: 'Telepon rumah model putar dengan nuansa vintage.',
    ),
    BarangBekas(
      nama: 'Jam Dinding Kayu',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz_yvCW18h4ra4UQdNEGXnpPOOpjUbjcwWsKp_Y8bjug&s=10',
      deskripsi: 'Jam dinding klasik berbahan kayu dengan tampilan antik.',
    ),
    BarangBekas(
      nama: 'Speaker Tabung',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb8pnerm_7y1wR_zYQn3CVeSouEIiSkl9-HVdoQWvu2A&s',
      deskripsi: 'Speaker audio tua dengan suara hangat khas tabung vakum.',
    ),
    BarangBekas(
      nama: 'Lemari',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppuCmtDqDhJ6MJvdsHbFYL2bTsvc6oQrQMuJ06AnRYQ&s=10',
      deskripsi: 'Lemari kayu bekas untuk penyimpanan dekoratif.',
    ),
    BarangBekas(
      nama: 'Set Gelas Kristal',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNmeVX9JR53MnH9A70m2g-uEB8JKNA65rx6Htyw0SzvQ&s',
      deskripsi: 'Gelas kristal bekas yang masih elegan untuk minuman spesial.',
    ),
    BarangBekas(
      nama: 'Kipas Angin',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwPfeYAJFSNjP3Dnnc7hfkC7AnT3_ls2Hhmny4hR6fRA&s=10',
      deskripsi: 'Kipas angin metal dengan desain jadul, masih bisa dipakai.',
    ),
    BarangBekas(
      nama: 'Piringan Hitam',
      gambar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWfp_ABLARi8plcXckSOUqqwCePaGYamRz0tT6dXMw2w&s=10',
      deskripsi: 'Vinyl lama untuk penggemar musik retro dan kolektor.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(
              dataProduk[index].gambar,
              height: 60,
              width: 100,
            ),
            title: Text(dataProduk[index].nama),
            subtitle: Text(dataProduk[index].deskripsi),
          );
        },
      ),
    );
  }
}
