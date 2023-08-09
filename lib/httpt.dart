import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class httpt extends StatefulWidget {
  const httpt({Key? key}) : super(key: key);

  @override
  State<httpt> createState() => _httptState();
}

class _httptState extends State<httpt> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Map map = {};
    return SafeArea(
      child: Scaffold(

        body:
        Column(children: [
          TextField(controller: name,),
          TextField( controller: email,),
          TextField( controller: password,),


          TextButton(onPressed: () {

             map={
              "name":name.text,
              "email":email.text,
              "password":password.text,
            };

          }, child: Text("Insert")),
          FutureBuilder(future: hp(map),builder: (context, snapshot) {


            if(snapshot.connectionState==ConnectionState.waiting){

              return CircularProgressIndicator();

            }
            else if(snapshot.hasError){

              return  Text("${snapshot.hasError}");
            }
            else{

              if(snapshot.data!['connection']==1){

                print("hiamsnhiii");
                EasyLoading.showSuccess('inserted');

              }
              return Text("");

            }

          },)
        ]),


      ),
    );
  }

  Future<Map> hp(Map map) async {

    var url = Uri.parse('https://himanshi85.000webhostapp.com/ecommerce/practice.php');
    var response = await http.post(url, body:map);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    var map1=jsonDecode(response.body);

    return map1;

  }
}
