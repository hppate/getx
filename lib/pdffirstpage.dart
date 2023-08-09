import 'package:flutter/material.dart';
import 'package:inpractice/pdfshare.dart';

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  String text="hiamsnhi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Articles page"),),
      body: Column(
        children: [
          Image.asset("image/download.jpeg"),
          Text(text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  PdfPreviewPage(text);
          }));
        },
        child: const Icon(Icons.picture_as_pdf_sharp),
      ),
    );
  }
}
