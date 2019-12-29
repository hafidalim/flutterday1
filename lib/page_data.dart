import 'package:flutter/material.dart';
import 'package:flutter_day_1/page_terima_data.dart';
import 'package:fluttertoast/fluttertoast.dart';


class PageData extends StatefulWidget {
  @override
  _PageDataState createState() => _PageDataState();
}

class _PageDataState extends State<PageData> {
  TextEditingController ecNama = new TextEditingController();

  String stringNama = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membawa Data'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              controller: ecNama,
              decoration: InputDecoration(
                hintText: 'Masukan Nama'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: (){

                setState(() {
                  stringNama = ecNama.text;

//                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTerimaData(
//                      nama : stringNama
//                  )
//                  ));

                  Fluttertoast.showToast(
                      msg: "Nama Anda : $stringNama",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 5,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                });



              },
              child: Text('Submit'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
