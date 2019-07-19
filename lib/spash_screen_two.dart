import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreenTwo extends StatefulWidget {

  @override
  _SplashScreenTwoState createState() => _SplashScreenTwoState();

}



class _SplashScreenTwoState extends State<SplashScreenTwo> {
 

   @override 
  void initState() {

    super.initState();
  

    //----HERE we can go to next page with 'TIMER'--------------

    Timer(
      
      Duration(seconds: 5), 
      
      ()=> Navigator.pushNamed(
        
        context, "/splashthree"
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

                    new Color(0xff8e24aa),

                    new Color(0xff00b0ff),

                    new Color(0xff673ab7),

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

                    Icons.add_a_photo,

                    color: Colors.deepOrangeAccent,

                    size: 50.0,

                  ),

                ),


                //Here we'll add a text with padding

                Padding(

                  padding: EdgeInsets.only(top: 10.0),

                ),


                Text(
                  
                  "Let's take a picture",
                
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





