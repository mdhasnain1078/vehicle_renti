import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehical_renti/provider/vehical_list.dart';

import 'Screen/home_screen.dart';
import 'Screen/vehical_detail_screen.dart';

main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>VehicalList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(75, 72, 201, 1),
          accentColor: Colors.grey,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.grey, fontSize: 12),
            bodyText2: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
          )
        ),
        routes: {
          VehicalDetailScree.routeName:(context) => const VehicalDetailScree()
        },
      ),
    );
  }
}