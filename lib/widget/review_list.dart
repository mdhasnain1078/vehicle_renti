import 'package:flutter/material.dart';

import 'review_tile.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key, required this.reviews});
  final List reviews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.maxFinite,
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Text("VEHICLE REVIEWS", style: Theme.of(context).textTheme.bodyText1,),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => const ReviewTile()),
              ),
            ],
          ),
       
    );
  }
}