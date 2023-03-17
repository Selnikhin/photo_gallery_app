import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../keys.dart';
import '../services/network_helper.dart';

class GalleryData extends ChangeNotifier {
  // лист наших фотографий
  List<String> photos = [];

  Future<void> getImages() async {
    List<String> images = [];
    // прописываем utl
    String url = "http://pixabay.com/api/?key=$pixabayApiKey&image_type=photo";

    NetworkHelper networkHelper = NetworkHelper(url: url);
    // доставим data
    dynamic data = await networkHelper.getData();
    // достаем hits это map
    List<dynamic> hitsList = data["hits"] as List;
    // луп в класическом виде.нам нужно достать "largeImageURL":
    for (int i = 0; i < hitsList.length; i++) {
      // проходимся по каждому hits и добавим в images
      images.add(hitsList[i]["largeImageURL"]);
    }
    photos = images;
    notifyListeners();
  }

}