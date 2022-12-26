import 'package:flutter/material.dart';
import 'package:photo_gallery_app/provider/gallery_data.dart';
import 'package:provider/provider.dart';


class PhotoGallery extends StatefulWidget {
  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  // создадим лист ссылок которые мы хотим доставать
 // Future<List<String>>? images;

  //создадим метод который будет возвращать future и доставать images


  // приравнивам  List<String> images = [] к  getImages()
  // @override
  // void initState() {
  //   super.initState();
  //   images = getImages();
    // getImages().then((value) => print(value));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
      // FutureBuilder(
      //     future: images,
      //     builder:
      //         (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
      //
      //       switch(snapshot.connectionState) {
      //         case ConnectionState.none:
      //         case ConnectionState.waiting:
      //         case ConnectionState.active:
      //           return Center(child: CircularProgressIndicator());
      //
      //         case ConnectionState.done:
      //           return SafeArea(

                 Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GridView.builder(
                    itemCount:   context.watch<GalleryData>().photos.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 6,
                          mainAxisSpacing: 6),
                      itemBuilder: (context, index) {
                        return Image.network(
                          context.watch<GalleryData>().photos[index ]
                        ,fit: BoxFit.cover,);
                      }),
                ),
              );
            }

}
