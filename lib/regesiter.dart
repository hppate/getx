import 'package:flutter/material.dart';
import 'package:inpractice/splashscreren.dart';

import 'classnotebook.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
     children: [
       TextField(controller: name,),
       TextField( controller: email,),
       TextButton(onPressed: () {

         notebook().insert(splasshh.db, name.text, email.text);

       }, child: Text("signup"))
     ],
      ),
    );
  }
}
