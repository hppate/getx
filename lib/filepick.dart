import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class hppp extends StatefulWidget {
  const hppp({Key? key}) : super(key: key);

  @override
  State<hppp> createState() => _hpppState();
}

class _hpppState extends State<hppp> {

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    // if no file is picked
    if (result == null) return;
    // we get the file from result object
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _pickFile();
          },
          child: Text(
            'Pick and open file',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
