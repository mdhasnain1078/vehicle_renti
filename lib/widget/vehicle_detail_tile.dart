import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehical_renti/provider/vehical_list.dart';

class VehicleDetailTile extends StatefulWidget {
  const VehicleDetailTile({
    super.key,
    required this.vehicleName,
    required this.greard,
    required this.seats,
    required this.fuel,
    required this.index,
  });
  final String vehicleName;
  final bool greard;
  final int seats;
  final String fuel;
  final int index;

  @override
  State<VehicleDetailTile> createState() => _VehicleDetailTileState();
}

class _VehicleDetailTileState extends State<VehicleDetailTile> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.vehicleName,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                  icon: isFavourite? const Icon(
                    Icons.favorite_outlined,
                    color: Colors.red,
                  ): const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  ),
            ],
          )
        ],
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "4.3",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "(44 rides)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/Union.png',
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.fuel),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "|",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.bike_scooter),
              const SizedBox(
                width: 10,
              ),
              Text(widget.greard ? "Greared" : "Non-Greared"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "|",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.people),
              const SizedBox(
                width: 10,
              ),
              Text("${widget.seats} Seater"),
            ],
          )
        ],
      ),
    );
  }
}
