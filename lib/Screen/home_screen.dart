import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehical_renti/Screen/vehical_detail_screen.dart';
import 'package:vehical_renti/provider/vehical_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vehicals = Provider.of<VehicalList>(context).vehicals;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Select vehicles",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 2,
            childAspectRatio: 2,
          ),
          itemCount: vehicals.length,
          itemBuilder: (ctx, i) => InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(VehicalDetailScree.routeName, arguments: {
                  "vehicalName": vehicals[i].vehicalName,
                  "vehicalImagePath": vehicals[i].vehicalImagePath,
                  "hostName":vehicals[i].hostName,
                  "fuelType":vehicals[i].fuelType,
                  "greared":vehicals[i].greared,
                  "seats":vehicals[i].seats,
                  "estAmount":vehicals[i].estAmount,
                  "rides":vehicals[i].rides,
                  "isFavourite":vehicals[i].isFavourite,
                  "reviews":vehicals[i].reviews,
                  "index":i

                }),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Text(
                      vehicals[i].vehicalName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    footer: Text(
                      vehicals[i].fuelType,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        vehicals[i].vehicalImagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
