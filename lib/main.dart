
import 'package:firebase_database/firebase_database.dart';
import 'package:flavour_test/app_config.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  AppConfig appConfig;
   MyApp({Key key,this.appConfig}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name="";
  getData()async{
    await FirebaseDatabase.instance
        .reference()
        .once().then((DataSnapshot snapshot) {
          print("snapshot${snapshot.value}");
          setState(() {
            name=snapshot.value["name"];
          });

    });
  }
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(widget.appConfig.appName),),
        body: Container(child: Center(child: Text(name)),),
      ),
    );
  }
}

