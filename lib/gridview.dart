import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class grid extends StatefulWidget {
  const grid({Key? key}) : super(key: key);

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  List<String> image=['image/download.jpeg', 'image/download (1).jpeg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MasonryGridView.builder(
        itemCount: 2,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
        return Container(

          margin: EdgeInsets.all(20),
          color: Colors.pink,
          child: Image(image: AssetImage(image[index])),
        );
      },),
    );
  }
}
