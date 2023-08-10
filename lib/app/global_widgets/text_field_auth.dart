import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget textFieldNormal(BuildContext context, String text) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 1,
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: largePadding, vertical: mediumPadding),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: extraLightGrey),
          borderRadius: BorderRadius.circular(largeRounded),
        ),
        fillColor: extraLightGrey,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(largeRounded),
            borderSide: const BorderSide(color: extraLightGrey, width: 3)),
        hintText: text,
        hintStyle: customTextSTyle(14.0, lightGrey, FontWeight.w400),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty';
        }
        return null;
      },
    ),
  );
}

Widget textFieldPassword(BuildContext context, String text) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 1,
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: largePadding, vertical: mediumPadding),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: extraLightGrey),
          borderRadius: BorderRadius.circular(largeRounded),
        ),
        fillColor: extraLightGrey,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(largeRounded),
            borderSide: const BorderSide(color: extraLightGrey, width: 3)),
        hintText: text,
        hintStyle: customTextSTyle(14.0, lightGrey, FontWeight.w400),
        suffixIcon: IconButton(
          color: yellow,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          icon: const Icon(Icons.visibility),
          onPressed: () {},
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty';
        }
        return null;
      },
      obscureText: true,
    ),
  );
}
