import 'package:flutter/material.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 160,
        width: 300,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/image/photo.png",
                    ),
                    radius: 29,
                  ),
                  title: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  subtitle: const Text("Manish"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Text(
                    "Best host ever. Everything was on time and convenient. 5 stars!",
                    style: TextStyle(letterSpacing: 1),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
