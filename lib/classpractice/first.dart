import 'package:flutter/material.dart';

class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hiamsnhi", style: TextStyle(color: Colors.black87))),
    );
  }
}
