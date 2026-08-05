import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BarangBekas {
  final String nama;
  final String gambar;
  final String deskripsi;
  BarangBekas({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'gambar': gambar,
      'deskripsi': deskripsi,
    };
  }

  factory BarangBekas.fromMap(Map<String, dynamic> map) {
    return BarangBekas(
      nama: map['nama'] as String,
      gambar: map['gambar'] as String,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BarangBekas.fromJson(String source) =>
      BarangBekas.fromMap(json.decode(source) as Map<String, dynamic>);
}
