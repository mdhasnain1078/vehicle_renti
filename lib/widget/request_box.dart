import 'package:flutter/material.dart';

class RequestBox extends StatefulWidget {
  const RequestBox({
    super.key, required this.estAmount,
  });

  final int estAmount;
  @override
  State<RequestBox> createState() => _RequestBoxState();
}
  bool isRequested = false;
class _RequestBoxState extends State<RequestBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
        height: isRequested? 225:178,
       decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
        BoxShadow(
          color: Theme.of(context).accentColor,
          blurRadius: 10,
          spreadRadius: 10
        )
       ]),
        child: Column(children: [
          isRequested ? 
          ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Ride Requested"),
                  Container(
                    height: 29,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(242, 242, 242, 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("5:00"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.watch_later_rounded, color: Colors.black,)
                      ],
                    ))
                ],
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("Host has received the ride request. We will notify you as soon as it is accepted."),
            ),
          ) :
          ListTile(
            title: Row(
              children: [
                Text("Pickup at host's location", style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500),),
                const SizedBox(width: 5,),
                Text("|", style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                const SizedBox(width: 5,),
                Text("3 km", style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500)
                 ,)
              ],
            ),
            subtitle: const Text("Shantiban Society, Near Tilak Sambh...",),
            trailing: SizedBox(
              height: 50,
              width: 50,
              child: Card( 
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: const Color.fromRGBO(196, 196, 196, 1),
                child: Icon(Icons.location_on, color: Theme.of(context).primaryColor, size: 25,),
              ),
            ),
          ),
          Divider(thickness: 1,),
          ListTile(
            title: Row(
              children: [
                const Text("Est Total:", style: TextStyle(fontSize: 16),),
                const SizedBox(width: 10,),
                Text(widget.estAmount.toString(), style:Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 20, fontWeight: FontWeight.w500)
                 )
              ],
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("View in detail", style: TextStyle(color: Color.fromRGBO(0, 188, 142, 1), decoration: TextDecoration.underline),),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 52),
                primary:isRequested? const Color.fromRGBO(237, 117, 46, 1): Theme.of(context).primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: (){
                setState(() {
                  isRequested = !isRequested;
                });
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text(isRequested?"Cencel Request":"Request Ride"),
                   if(!isRequested)
                   const Icon(Icons.arrow_forward_rounded),
                ],
              )),
          )
        ]),
      ),]
    );
  }
}