import 'package:flutter/material.dart';
import 'package:logger/Styles/ThemeColors.dart';

TextStyle bannerTextStyle(){
  return const TextStyle(
      color: ThemeColors.bannerTextColor,
      fontFamily: 'Montserrat',
      fontSize: 34.0,
      height: 0.5);
}
TextStyle homeMenuTextStyle(){
  return const TextStyle(
      color: ThemeColors.bannerTextColor,
      fontFamily: 'Montserrat',
      fontSize: 24.0,);
}

TextStyle menuHeadlineText(){
  return const TextStyle(
      color: Colors.grey,
      fontFamily: 'Montserrat',
      fontSize: 18.0,);
}

TextStyle gridItemName(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontSize: 18.0,);
}

TextStyle gridItemPrice(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontSize: 20.0,);
}