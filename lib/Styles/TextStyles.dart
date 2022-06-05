import 'package:flutter/material.dart';
import 'package:logger/Styles/ThemeColors.dart';

TextStyle bannerTextStyle(){
  return const TextStyle(
      color: ThemeColors.bannerTextColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 34.0,
      height: 0.5);
}
TextStyle homeMenuTextStyle(){
  return const TextStyle(
      color: ThemeColors.bannerTextColor,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 24.0,
      height: 0.2);
}

TextStyle menuHeadlineText(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      height: 0.2);
}

TextStyle gridItemName(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      height: 0.2);
}

TextStyle gridItemPrice(){
  return const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 22.0,
      height: 0.2);
}