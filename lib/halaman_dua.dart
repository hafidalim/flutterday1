import 'package:flutter/material.dart';



class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Dua'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap:(){
                Navigator.pop(context);
              } ,
                child: Text('Halaman Dua')),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Kembali', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
