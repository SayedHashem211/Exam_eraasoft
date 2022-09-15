
import 'package:flutter/material.dart';

import 'login_screen.dart';


class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);

  var welcomeImage = new Image.asset("assets/welcomeman.png", fit: BoxFit.cover,width: double.infinity,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          welcomeImage,
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/carrot.png"),
                SizedBox(height: 20,),
                Text("Welcome", style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Text("to our store", style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Text("Get your groceries in as fast as one hour", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    child: Text("Get Started", textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),)
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}