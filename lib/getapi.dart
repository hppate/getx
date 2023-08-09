import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inpractice/getclass.dart';

class hppp extends StatefulWidget {
  const hppp({Key? key}) : super(key: key);
  static Map map={

  };


  @override
  State<hppp> createState() => _hpppState();
}

class _hpppState extends State<hppp> {
  getapi api=Get.put(getapi());
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(controller: name,),
        TextField( controller: email,),
        TextField( controller: password,),
        TextButton(onPressed: () {
          // hppp.map = {
          //   'name':name.text,
          //   'email':email.text,
          //   'password':password.text,
          // };
          hppp.map['name']=name.text;
          hppp.map['email']=email.text;
          hppp.map['password']=password.text;
          print("${hppp.map}......................");


          api.apiiiiiooooo();

        }, child: Text("insert")),
        Obx((){

          if(api.map.value['connection']==1){
            return Text("Success");
          }
          else{
            return CircularProgressIndicator();
          }
        }),

      ]),



    );
  }
}
