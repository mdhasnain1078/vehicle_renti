import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_renti/app_custom_material/app_icons.dart';

import '../widget/cancellation_tile.dart';
import '../widget/host_tile.dart';
import '../widget/insurance_protection_tile.dart';
import '../widget/rent_duration_tile.dart';
import '../widget/request_box.dart';
import '../widget/review_list.dart';
import '../widget/vehicle_detail_tile.dart';

class VehicalDetailScree extends StatelessWidget {
  const VehicalDetailScree({super.key});
  static const String routeName = "/VehicalDetailScree";
  @override
  Widget build(BuildContext context) {
    final deviceHieght = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final vehicalDetail =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1.5,
                  child: Stack
                  (
                    // alignment: Alignment.bottomCenter,
                    children: [Stack
                    (
                      alignment: Alignment.topLeft,
                      children: [SizedBox(
                          width: deviceWidth,
                          child: Image.asset(
                            vehicalDetail['vehicalImagePath'],
                            
                            fit: BoxFit.cover,
                          )),
                          SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: ()=>Navigator.of(context).pop(),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.arrow_back, color: Colors.black,),
                                ),
                              ),
                            ),
                          )
                          ]
                    ),
                    Positioned(
                      top: deviceHieght*0.28,
                      left: deviceWidth*0.45,
                      child: Container(
                        height: 18,
                        width: 54,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(23)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [CircleAvatar(radius: 3,),
                        CircleAvatar(radius: 3, backgroundColor: Colors.grey,),
                        CircleAvatar(radius: 3, backgroundColor: Colors.grey,),
                        ],),
                      ),
                    )
                    ]
                  ),
                
                ),
                Column(
                  children: [
                    VehicleDetailTile(
                      vehicleName: vehicalDetail["vehicalName"],
                      greard: vehicalDetail["greared"],
                      seats: vehicalDetail["seats"], fuel: vehicalDetail["fuelType"],
                       index: vehicalDetail["index"],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    DurationTile(),
                    const Divider(
                      thickness: 1,
                    ),
                    const InsuranceProtectionTile(),
                    const Divider(
                      thickness: 1,
                    ),
                    const CencellationTile(),
                    const Divider(
                      thickness: 1,
                    ),
                    ReviewList(
                      reviews: vehicalDetail["reviews"],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    HostTile(
                      hostName: vehicalDetail["hostName"],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 47,)
                    
                  ],
                )
              ],
            ),
          ),
          RequestBox(
                  estAmount: vehicalDetail["estAmount"],
                )
        ],
      ),
    );
    
  }
}






// "vehicalName": vehicals[i].vehicalName,
//                   "vehicalImagePath": vehicals[i].vehicalImagePath,
//                   "hostName":vehicals[i].hostName,
//                   "fuelType":vehicals[i].fuelType,
//                   "greared":vehicals[i].greared,
//                   "seats":vehicals[i].seats,
//                   "estAmount":vehicals[i].estAmount,
//                   "rides":vehicals[i].rides,
//                   "isFavourite":vehicals[i].isFavourite,
//                   "reviews":vehicals[i].reviews,




