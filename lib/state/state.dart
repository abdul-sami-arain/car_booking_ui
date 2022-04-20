import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  String? mainImage;
  String? heading;
  int? price;
  List subImages = [];
  Map Specifications =  {
        'Make':"",
        'MODEL':"",
        'YEAR':"",
        'MILEAGE':"",
        'TRANSMISSION':"",
        'COLOR':"",
        'HEX':"",
       'NO_OF_DOORS':""
  };
  show(String mainImg, List images, String Heading, int Price,
      Map specification) {
    mainImage = mainImg;
    subImages = images;
    heading = Heading;
    price = Price;
    Specifications=specification;
    print(subImages);
    print(Specifications);
    notifyListeners();
  }
}
