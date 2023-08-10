import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trashure/constant.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-7.983908, 112.621391),
    zoom: 14.4746,
  );

  static const List<String> listPlace = <String>['TPA', 'Loakan', 'Daur Ulang'];
  String dropdownValue = listPlace.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: largePadding, vertical: extraLargePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: white,
                        boxShadow: [buttonShadow]),
                    child: const Icon(Icons.arrow_back, color: black),
                  ),
                ),
                const SizedBox(height: largePadding),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: smallPadding),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(smallRounded),
                      boxShadow: [buttonShadow]),
                  child: DropdownButton(
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: black,
                      size: 18,
                    ),
                    elevation: 2,
                    isExpanded: true,
                    style: customTextSTyle(16.0, black, FontWeight.w500),
                    borderRadius: BorderRadius.circular(smallRounded),
                    padding: const EdgeInsets.all(smallPadding),
                    items:
                        listPlace.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
