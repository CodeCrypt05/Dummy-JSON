import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dummy_json/model/category.dart';

List categoryPanel = [
  Category(
    image: "assets/images/Grocery.svg",
    name: 'Grocery',
    textColor: HexColor('#60AB00'),
    subColor: const Color.fromRGBO(96, 171, 0, 0.05),
  ),
  Category(
    image: "assets/images/MeatsChickens.svg",
    name: 'Meats & Chickens',
    textColor: HexColor('#C79B00'),
    subColor: const Color.fromRGBO(199, 155, 0, 0.05),
  ),
  Category(
    image: "assets/images/DairyProducts.svg",
    name: 'Dairy Products',
    textColor: HexColor('#0077E7'),
    subColor: const Color.fromRGBO(0, 119, 231, 0.05),
  ),
  Category(
    image: "assets/images/Biscuit.svg",
    name: 'Biscuits  & Cookies',
    textColor: HexColor('#60AB00'),
    subColor: const Color.fromRGBO(0, 158, 100, 0.05),
  ),
  Category(
    image: "assets/images/CleaningEssentials.svg",
    name: 'Cleaning Essentials',
    textColor: HexColor('#0077E7'),
    subColor: const Color.fromRGBO(96, 119, 231, 0.05),
  ),
  Category(
    image: "assets/images/Snacks.svg",
    name: 'Snacks',
    textColor: HexColor('#E70000'),
    subColor: const Color.fromRGBO(231, 0, 0, 0.05),
  ),
  // Category(
  //   image: "assets/images/MakeupBeauty.svg",
  //   name: 'Makeup & Beauty',
  //   textColor: HexColor('#E7009A'),
  //   subColor: const Color.fromRGBO(231, 0, 154, 0.05),
  // ),
  Category(
    image: "assets/images/BathingEssential.svg",
    name: 'Bathing Essential',
    textColor: HexColor('#7300E7'),
    subColor: const Color.fromRGBO(115, 0, 231, 0.05),
  ),
];
