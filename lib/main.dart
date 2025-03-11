import 'package:flutter/material.dart';
import 'package:sample_flutter_demo/DetailsPage.dart';
import 'package:sample_flutter_demo/Home.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home:Home(),
      routes: {
        //'Detailspage': (context) => const Detailspage(),
      },

    );
  }
}