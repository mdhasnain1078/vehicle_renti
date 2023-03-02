import 'package:flutter/material.dart';

class VehicalModel {
  final String vehicalName;
  final String vehicalImagePath;
  final String hostName;
  final String fuelType;
  final bool greared;
  final int seats;
  final int estAmount;
  final int rides;
  bool isFavourite;
  List<dynamic>? reviews;

  VehicalModel(
      {required this.vehicalName,
      required this.vehicalImagePath,
      required this.hostName,
      required this.fuelType,
      required this.greared,
      required this.seats,
      required this.estAmount,
      required this.rides,
      this.isFavourite = false,
      this.reviews});
}
