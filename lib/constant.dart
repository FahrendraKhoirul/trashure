import 'package:flutter/material.dart';

// COLOR
const white = Color(0xFFFFFFFF);
const extraLightGrey = Color(0xFFF5F5F5);
const lightGrey = Color(0xFFD2D2D2);
const grey = Color(0xFF626262);
const black = Color(0xFF2C2B2D);
const yellow = Color(0xFFF8E33F);
const lightYellow = Color(0xFFFFFCE8);

// PADDING
const extraSmallPadding = 8.0;
const smallPadding = 12.0;
const regularPadding = 16.0;
const mediumPadding = 20.0;
const largePadding = 24.0;
const extraLargePadding = 32.0;

// ROUNDED
const smallRounded = 12.0;
const regularRounded = 16.0;
const mediumRounded = 20.0;
const largeRounded = 28.0;

// SHADOW
var buttonShadow = BoxShadow(
  color: grey.withOpacity(0.1),
  blurRadius: 8,
  offset: const Offset(0, 2),
);

var cardShadow = BoxShadow(
  color: grey.withOpacity(0.25),
  spreadRadius: 1,
  blurRadius: 2,
  offset: const Offset(0, 1),
);

// TEXT STYLE
TextStyle customTextSTyle(double size, Color color, FontWeight weight) {
  return TextStyle(
    fontSize: size,
    color: color,
    fontWeight: weight,
  );
}
