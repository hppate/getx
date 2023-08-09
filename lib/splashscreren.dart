import 'package:flutter/material.dart';
import 'package:inpractice/getapi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'classnotebook.dart';
import 'home.dart';
import 'login.dart';

class splasshh extends StatefulWidget {
  static SharedPreferences? pref;
  static Database? db;


  @override
  State<splasshh> createState() => _splasshhState();
}

class _splasshhState extends State<splasshh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getprefrences();
    getdata();
  }
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }

  Future<void> getprefrences() async {

    splasshh.pref= await SharedPreferences.getInstance();
    bool satus=splasshh.pref!.getBool("satus")??false;

    Future.delayed(Duration(seconds: 3)).then((value) {

      if(satus){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return home();
        },));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return login();
        },));
      }

    });


  }

  void getdata() {
    notebook data=notebook();
    data.contactdata().then((value) {
      setState(() {
        splasshh.db=value;
      });
    });

  }
}
