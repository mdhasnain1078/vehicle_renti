import 'package:flutter/material.dart';

class HostTile extends StatelessWidget {
  const HostTile({
    super.key, required this.hostName,
  });
  final String hostName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        hostName,textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Theme.of(context).primaryColor,
                                radius: 35,
                              ),
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/image/rohit 1.png"),
                                radius: 30,
                              ),
                              Positioned(
                                top: 55,
                                child: SizedBox(
                                    height: 25,
                                    width: 70,
                                    child: Card(
                                      color: Colors.white,
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Positioned(
                                        top: 50,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceAround,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Color.fromRGBO(
                                                  75, 72, 201, 1),
                                            ),
                                            Text(
                                              "4.7",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                              ),

                            ]),
                             Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Rohit Sharma",
                            style: Theme.of(context).textTheme.bodyText2),
                            const SizedBox(width: 5,),
                      const Text("(41 rides)", style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Text("Typically responds within 3 minutes.",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: Theme.of(context).primaryColor,))
                      
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}