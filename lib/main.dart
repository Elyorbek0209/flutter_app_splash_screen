import 'package:flutter/material.dart';
import 'splash_screen_one.dart';
import 'spash_screen_two.dart';
import 'spash_screen_three.dart';


//Here we'll declare some varibale for our 2nd & 3rd page

var routes = <String, WidgetBuilder>{

  "/splashtwo" : (BuildContext context) => SplashScreenTwo(),

  "/splashthree" : (BuildContext context) => SplashScreenThree(),

  "/splashone" : (BuildContext context) => SplashScreenOne(),
};




void main() => runApp(

    MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
       
        primaryColor: Color(0xff622F74),

        accentColor: Colors.orange
      
      ),
     
      home: SplashScreenOne(),

      routes: routes,
   
    )
   
    );

