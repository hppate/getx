import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:inpractice/getapi.dart';


class getapi extends GetxController{

  RxMap map={}.obs;


  Future<void> apiiiiiooooo() async {
    var url = Uri.parse('https://himanshi85.000webhostapp.com/ecommerce/practice.php');
    var response = await http.post(url, body:hppp.map);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    var map1=jsonDecode(response.body);
      map.value=map1;
  }


}