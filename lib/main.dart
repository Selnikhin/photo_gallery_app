import 'package:flutter/material.dart';
import 'package:photo_gallery_app/provider/gallery_data.dart';

import 'Screen/photo_gall_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>GalleryData()..getImages(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: PhotoGallery(),
      ),
    );
  }
}

