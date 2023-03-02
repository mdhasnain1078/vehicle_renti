import 'package:flutter/material.dart';
import 'package:vehical_renti/model/vehical_model.dart';

class VehicalList with ChangeNotifier {
  List<VehicalModel> vehicals = [
    VehicalModel(
        vehicalName: "Honda Activa 4g 120cc",
        vehicalImagePath: 'assets/image/vehical1.jpg',
        hostName: "Rohit Sharm",
        fuelType: "Petrol",
        greared: false,
        seats: 2,
        estAmount: 451,
        rides: 41,
        reviews: [1,2, 3, 4, 5]
        ),

      VehicalModel(
        vehicalName: "Honda Activa 4g 120cc",
        vehicalImagePath: 'assets/image/vehical1.jpg',
        hostName: "Rohit Sharm",
        fuelType: "Petrol",
        greared: false,
        seats: 2,
        estAmount: 451,
        rides: 41,
        reviews: [1,2, 3, 4, 5]
        ),

        VehicalModel(
        vehicalName: "Honda Activa 4g 120cc",
        vehicalImagePath: 'assets/image/vehical1.jpg',
        hostName: "Rohit Sharm",
        fuelType: "Petrol",
        greared: false,
        seats: 2,
        estAmount: 451,
        rides: 41,
        reviews: [1,2, 3, 4, 5]
        ),

        VehicalModel(
        vehicalName: "Honda Activa 4g 120cc",
        vehicalImagePath: 'assets/image/vehical1.jpg',
        hostName: "Rohit Sharm",
        fuelType: "Petrol",
        greared: false,
        seats: 2,
        estAmount: 451,
        rides: 41,
        reviews: [1,2, 3, 4, 5]
        ), 
  ];

  void isFavourite(bool isFavourite, int index){
    vehicals[index].isFavourite = !isFavourite;
    notifyListeners();
  }
}
