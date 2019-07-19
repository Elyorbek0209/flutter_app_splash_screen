import 'dart:async';

import 'package:flutter/material.dart';




class SplashScreenOne extends StatefulWidget {

  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();

}



class _SplashScreenOneState extends State<SplashScreenOne> {
 

  @override 
  void initState() {

    super.initState();


    //----HERE we can go to next page with 'TIMER'--------------

    Timer(
      
      Duration(seconds: 5), 
      
      ()=> Navigator.pushNamed(
        
        context, "/splashtwo"
      )
        
    );

    //----End of the 'TIMER'--------------

  }




  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      
      /** 
       * By using 'Stack', we'll stack all 
       * the element one above the other: 1st background color,
       * then icon & then text
       * 
      */

      body: Stack(

        fit: StackFit.expand,

          children: <Widget>[

            Container(

              decoration: BoxDecoration(

                color: new Color(0xff622F74),

                /**So how we have MultiColor in Page? 
                 * 
                 * For that we'll use 'gradient' property
                 * 
                 * Here we are mixing 2 different color in our page
                 */

                gradient: LinearGradient(

                  colors: [

                    new Color(0xff1a237e),

                    new Color(0xffefebe9),

                    new Color(0xff9575Cd),

                  ],

                  begin: Alignment.centerRight,

                  end: Alignment(-2.0, 1.0)

                  //end: Alignment.centerLeft,

                ),

              ),

            ),



            Column(

              //Here we'll put our circle in the center
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                //1st circle
                CircleAvatar(

                  backgroundColor: Colors.white,

                  radius: 75.0,

                  //2nd circle
                  child: Icon(

                    Icons.beach_access,

                    color: Colors.deepOrange,

                    size: 50.0,

                  ),

                ),


                //Here we'll add a text with padding

                Padding(

                  padding: EdgeInsets.only(top: 10.0),

                ),


                Text(
                  
                  "Welcome to Paradise Beach",
                
                  style: TextStyle(

                    color: Colors.white,

                    fontSize: 24.0

                  ),
                
                ),          

              ],

            ),    

          ],

      ),

    );
  }
}





