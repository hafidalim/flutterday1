import 'package:flutter/material.dart';


class PageTerimaData extends StatefulWidget {
  String nama;

  PageTerimaData({this.nama});
  @override
  _PageTerimaDataState createState() => _PageTerimaDataState();
}

class _PageTerimaDataState extends State<PageTerimaData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Terima Data'),),
      body: Center(
        child: Text(
          'Nama Anda : ${widget.nama}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
