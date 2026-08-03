import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class inputwidgetDay13 extends StatefulWidget {
  const inputwidgetDay13({super.key});

  @override
  State<inputwidgetDay13> createState() => _inputwidgetDay13State();
}

class _inputwidgetDay13State extends State<inputwidgetDay13> {
  bool _isOn = false;
  String? _selected;
  bool _isCheck = false;
  DateTime? _selectedTime;
  TimeOfDay? _selectedTimeOfDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isOn ? Colors.black : Colors.white,
      child: Column(
        children: [
          Checkboxwidget(),
          switchwidget(),
          Dropdownbuttonwidget(),
          Datepickerwidget(context),
          ElevatedButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                // firstDate: DateTime(2021),
                // lastDate: DateTime.now(),
                // initialDate: DateTime.now(),
              );
              if (picked != null) {
                setState(() {
                  _selectedTimeOfDay = picked;
                });
              }
            },
            child: Text("Pilih Waktu"),
          ),
          Text(
            _selectedTimeOfDay == Null
                ? "anda belum pilih Jam"
                : _selectedTimeOfDay.toString(),
          ),
          Text(
            _selectedTimeOfDay == Null
                ? "anda belum pilih Jam"
                : DateFormat('HH : mm a').format(
                    DateTime(
                      0,
                      0,
                      0,
                      _selectedTimeOfDay!.hour,
                      _selectedTimeOfDay!.minute,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Column Datepickerwidget(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );
            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: Text("Pilih Tanggal"),
        ),
        Text(
          _selectedTime == Null
              ? "anda belum pilih tanggal"
              : _selectedTime.toString(),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEEE, dd MMMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
      ],
    );
  }

  Column Checkboxwidget() {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            setState(() {
              _isCheck = value ?? false;
            });
          },
        ),
        Text(_isCheck ? "Sudah di ceklis" : "Belum di ceklis"),
      ],
    );
  }

  Column Dropdownbuttonwidget() {
    return Column(
      children: [
        DropdownButton(
          value: _selected,
          items: ["Merah", "Kuning", "Hijau"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
        Text(_selected.toString()),
        Container(
          height: 50,
          width: 50,
          color: _selected == "Merah"
              ? Colors.red
              : _selected == "Kuning"
              ? Colors.yellow
              : Colors.green,
        ),
      ],
    );
  }

  Column switchwidget() {
    return Column(
      children: [
        Switch(
          value: _isOn,
          onChanged: (value) {
            _isOn = value ?? false;
            setState(() {});
          },
        ),
        Text(_isOn ? "matiin" : "Hidupin"),
      ],
    );
  }
}
