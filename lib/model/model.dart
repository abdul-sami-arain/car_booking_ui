import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowSlider {
  final String image;
  final String description;
  final int number;
  final Color? bgcolor;
  final Color? textColor;
  final Color? numberColor;

  RowSlider(
      {required this.image,
      required this.description,
      required this.number,
      required this.bgcolor,
      required this.textColor,
      required this.numberColor});
}

List<RowSlider> contents = [
  RowSlider(
    image: "assets/cars/rowCar1.png",
    description: "Standard",
    number: 32,
    bgcolor: Colors.green,
    textColor: Colors.white,
    numberColor: Colors.white,
  ),
  RowSlider(
      image: "assets/cars/rowCar2.png",
      description: "Prestige",
      number: 34,
      bgcolor: Colors.white,
      textColor: Colors.black,
      numberColor: Colors.grey),
  RowSlider(
    image: "assets/cars/rowCar3.png",
    description: "SUV",
    number: 12,
    bgcolor: Colors.amber,
    textColor: Colors.white,
    numberColor: Colors.white,
  ),
  RowSlider(
    image: "assets/cars/rowCar4.png",
    description: "Luxury",
    number: 32,
    bgcolor: Colors.blue,
    textColor: Colors.white,
    numberColor: Colors.white,
  ),
];


class Ava {
  late final String heading;
  late final String description;
  late final int price;
  late final String image;
  List images = [];
  Map specifications ={};
  Ava(
      {required this.description,
      required this.heading,
      required this.image,
      required this.price,
      required this.images,
      required this.specifications,
      });
}

List<Ava> content1 = [
  Ava(
      description: "4-Cyl 1.5 Liter Engine",
      heading: "CIVIC",
      image: "assets/cars/civic.jpg",
      price: 10000,
      images: [
        "assets/cars/civic1.jpg",
        "assets/cars/civic2.jpg",
        "assets/cars/civic3.jpg",
        "assets/cars/civic4.jpg",
        "assets/cars/civic5.jpg",
        "assets/cars/civic6.jpg",
      ],
      specifications: {
        'Make':"CIVIC HONDA",
        'MODEL':"123456A",
        'YEAR':"2018",
        'MILEAGE':"12346",
        'TRANSMISSION':"AUTOMATIC",
        'COLOR':"Red",
        'HEX':"#FF0020",
        'NO_OF_DOORS':"4 DOORS"
      }
      ),
  Ava(
      description: "4-Cyl 1.5 Liter Engine",
      heading: "COROLLA",
      image: "assets/cars/corollaH.jpg",
      price: 10000,
      images: [
        "assets/cars/corollaH1.jpg",
        "assets/cars/corollaH2.jpg",
        "assets/cars/corollaH3.jpg",
        "assets/cars/corollaH4.jpg",
        "assets/cars/corollaH5.jpg",
        "assets/cars/corollaH6.jpg",
      ],
      specifications: {
        "Make":"COROLLA XLI",
        "MODEL":"123567B",
        "YEAR":"2019",
        "MILEAGE":"45867",
        "TRANSMISSION":"AUTOMATIC",
        "COLOR":"Blue",
        'HEX':"#0001f6",
        'NO_OF_DOORS':"4 DOORS"
      }),
  Ava(
      description: "4-Cyl 1.5 Liter Engine",
      heading: "SWIFT",
      image: "assets/cars/swift.jpg",
      price: 10000,
      images: [
        "assets/cars/swift1.jpg",
        "assets/cars/swift2.jpg",
        "assets/cars/swift3.jpg",
        "assets/cars/swift4.jpg",
        "assets/cars/swift5.jpg",
        "assets/cars/swift6.jpg",
      ],
      specifications: {
        "Make":"AWIFT CAMRY",
        "MODEL":"783456C",
        "YEAR":"2021",
        "MILEAGE":"86169",
        "TRANSMISSION":"AUTOMATIC",
        "COLOR":"Green",
        'HEX':"#65cd87",
        'NO_OF_DOORS':"4 DOORS"
      }),
  Ava(
      description: "4-Cyl 1.5 Liter Engine",
      heading: "TACOMA",
      image: "assets/cars/tacoma.jpg",
      price: 10000,
      images: [
        "assets/cars/tacoma1.jpg",
        "assets/cars/tacoma2.jpg",
        "assets/cars/tacoma3.jpg",
        "assets/cars/tacoma4.jpg",
        "assets/cars/tacoma5.jpg",
        "assets/cars/tacoma6.jpg",
      ],
      specifications: {
        "Make":"TACOMA CAMRY",
        "MODEL":"107456D",
        "YEAR":"2018",
        "MILEAGE":"06268",
        "TRANSMISSION":"AUTOMATIC",
        "COLOR":"Black",
        'HEX':"#2b2930",
        'NO_OF_DOORS':"4 DOORS"
      }),
  Ava(
      description: "4-Cyl 1.5 Liter Engine",
      heading: "VITZ",
      image: "assets/cars/vitz.jpg",
      price: 10000,
      images: [
        "assets/cars/vitz1.jpg",
        "assets/cars/vitz2.jpg",
        "assets/cars/vitz3.jpg",
        "assets/cars/vitz4.jpg",
        "assets/cars/vitz5.jpg",
        "assets/cars/vitz6.jpg",
      ],
      specifications: {
        "Make":"HONDA VITZ",
        "MODEL":"120856E",
        "YEAR":"2022",
        "MILEAGE":"00002",
        "TRANSMISSION":"AUTOMATIC",
        "COLOR":"Zinck",
        'HEX':"#174955",
        'NO_OF_DOORS':"4 DOORS"
      }),
];
