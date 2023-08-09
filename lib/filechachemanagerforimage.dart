import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class imageecache extends StatefulWidget {
  const imageecache({Key? key}) : super(key: key);

  @override
  State<imageecache> createState() => _imageecacheState();
}

class _imageecacheState extends State<imageecache> {
  List<String> imm=['https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg', 'https://pixabay.com/images/search/nature/', 'https://pixabay.com/images/search/nature/'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(height: 12),

        itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
              key: UniqueKey(),
              imageUrl:'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
             placeholder: (context, url) => Container(color: Colors.grey.shade500),
            // progressIndicatorBuilder: (context, url, downloadProgress) =>
            //     CircularProgressIndicator(value: downloadProgress.progress),
          ),
        );
      },) ,
    );
  }
}
