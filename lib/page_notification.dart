import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:giffy_dialog/giffy_dialog.dart';



class PageNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Widget'),),
      body: Center(
        child: Column(
          children: <Widget>[

            MaterialButton(onPressed: (){
              Fluttertoast.showToast(
                msg: "Anda mengklik show toast !",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 10,
              );
            },
            child: Text('Show Toast'),
            color: Colors.lightGreen,
              textColor: Colors.white,
            ),

            MaterialButton(onPressed: (){
              showDialog(context: context, builder: (context) =>
              AlertDialog(
                title: Text('Form'),
                content: TextFormField(
                  decoration: InputDecoration(hintText: 'Masukkan Nama'),
                ),
                actions: <Widget>[
                  MaterialButton(
                    onPressed: (){},
                    child: Text('Submit'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ));

            },
              child: Text('Show Forma'),
              color: Colors.lightGreen,
              textColor: Colors.white,
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SnackbarStatefull()));
//              SnackBar(
//                content: Text('Ini merupakan snackbar'),
//                action: SnackBarAction(label: 'Close', onPressed: (){}),
//              );


            },
              child: Text('Snackbar'),
              color: Colors.deepOrange,
              textColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}

class SnackbarStatefull extends StatefulWidget {
  @override
  _SnackbarStatefullState createState() => _SnackbarStatefullState();
}

class _SnackbarStatefullState extends State<SnackbarStatefull> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Center(
        child: MaterialButton(onPressed: (){

          _key.currentState.showSnackBar(SnackBar(content: Text('Ini contoh snackbar'),));
        },
          child: Text('Show SnackBar'),
          color: Colors.red,
        ),

      ),

    );
  }
}

