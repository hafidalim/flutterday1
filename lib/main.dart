import 'package:flutter/material.dart';
import 'package:flutter_day_1/halaman_dua.dart';
import 'package:flutter_day_1/page_data.dart';
import 'package:flutter_day_1/page_notification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Day 1'),

      ),
      body:

        
        Column(
          children: <Widget>[

//            Icon(Icons.home),
            InkWell(
              onDoubleTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HalamanDua()));
              },
                child:
                Image.asset('images/logo_flutter.png')
            ),



            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(

                decoration: InputDecoration(
                  labelText: 'Ini form'
                ),
              ),
            ),

            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HalamanDua() ));
              },
              color: Colors.red,
              child: Text('Pindah Halaman',),
              textColor: Colors.white,
            ),
            MaterialButton(onPressed: (){
             //link ke halaman login
            },
              color: Colors.blue,
              child: Text('Latihan'),
              textColor: Colors.white,
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageData()));
            },
              color: Colors.deepOrange,
              child: Text('Membawa Data'),
              textColor: Colors.white,
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageNotification()));
            },
              color: Colors.yellow,
              child: Text('Notification Widget'),
              textColor: Colors.black,
            ),

          ],
        )
          
          
          
          //text posisi kanan
//        Container(
//          width: 350,
//            child: Text('Welcome to flutter', textAlign: TextAlign.right,)
//        ),


/*
*
*  text di kiri
*
* */
//      Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//
//          Text('Welcome to flutter', textDirection: TextDirection.rtl,),
//          Text('Day 1'),
//          SizedBox(height: 20,),
//          Icon(Icons.home)
//        ],
//
//      ),


    );
  }
}

