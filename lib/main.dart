import 'package:flutter/material.dart';//package name
import 'package:si_calculator/SIcalc_body.dart';
void  main()
{
  runApp(SIcalcdashboard());
}

class SIcalcdashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'SI_calculator',
      home: SIcalcbody(),
      theme: ThemeData(
         
        primaryColor:Color.fromARGB(255,17,123,116),
        brightness: Brightness.dark,
        // accentColor: Color.fromARGB(255,17,123,116),
      ),
    );
  
  }
}