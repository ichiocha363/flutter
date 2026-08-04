import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeTugas7 extends StatefulWidget {
  const HomeTugas7({super.key});

  @override
  State<HomeTugas7> createState() => _HomeTugas7State();
}

class _HomeTugas7State extends State<HomeTugas7> {
  @override
  bool _checker = false;
  bool _nyala = false;
  String? _pilihan;
  DateTime? _selectedTime;
  TimeOfDay? _selectedTimeOfDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: _nyala ? Colors.black : Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Text("Persyaratan :"),
                  Text(
                    _checker
                        ? "Pendaftaran diperbolehkan"
                        : "Pendaftaran belum tersedia",
                  ),
                  Spacer(),
                  Checkbox(
                    value: _checker,
                    onChanged: (value) {
                      setState(() {
                        _checker = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    _nyala ? "matiin" : "Hidupin",
                    style: TextStyle(
                      color: _nyala ? Colors.white : Colors.black,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Switch(
                      value: _nyala,
                      onChanged: (value) {
                        _nyala = value ?? false;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Anda memilih kategori $_pilihan",
                        style: TextStyle(
                          fontSize: 16,
                          color: _nyala ? Colors.white : Colors.black,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: DropdownButton(
                          value: _pilihan,
                          items: ["Elektronik", "Pakaian", "Makanan"].map((
                            String val,
                          ) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(val),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _pilihan = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        _selectedTime == null
                            ? "Anda belum pilih tanggal"
                            : "Tanggal lahir: ${DateFormat('dd MMMM yyyy', 'id_ID').format(_selectedTime ?? DateTime.now())}",
                        style: TextStyle(
                          fontSize: 16,
                          color: _nyala ? Colors.white : Colors.black,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2008),
                            lastDate: DateTime.now(),
                            // initialDate: DateTime.now(),
                          );
                          if (picked != null) {
                            setState(() {
                              _selectedTime = picked;
                            });
                          }
                        },
                        child: Text(
                          "Pilih Tanggal",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _nyala ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        _selectedTimeOfDay == null
                            ? "anda belum pilih Jam"
                            : "Pengingat diatur pukul : ${DateFormat('hh:mm a').format(DateTime(0, 0, 0, _selectedTimeOfDay!.hour, _selectedTimeOfDay!.minute))}",
                        style: TextStyle(
                          fontSize: 16,
                          color: _nyala ? Colors.white : Colors.black,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? picked = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (picked != null) {
                            setState(() {
                              _selectedTimeOfDay = picked;
                            });
                          }
                        },
                        child: Text(
                          "Pilih Waktu",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),

                  Text(
                    "Result",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Status Pendaftaran   :",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        _checker
                            ? "Pendaftaran di perbolehkan"
                            : "Pendaftaran gagal",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Mode Gelap    :", style: TextStyle(fontSize: 16)),
                      Text(
                        _nyala ? "On" : "Off",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Menu yang dipilih   :",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(_pilihan.toString(), style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Penginat diatur pukul    :",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        _selectedTime == null
                            ? "00:00"
                            : DateFormat('HH:mm a').format(
                                DateTime(
                                  0,
                                  0,
                                  0,
                                  _selectedTime!.hour,
                                  _selectedTime!.minute,
                                ),
                              ),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Tanggal Lahir   :", style: TextStyle(fontSize: 16)),
                      Text(
                        DateFormat(
                          "EE, dd MMMM yyyy",
                          "id_ID",
                        ).format(_selectedTime ?? DateTime.now()),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
