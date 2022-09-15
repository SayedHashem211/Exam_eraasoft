
import 'package:eraasoft_exam_flutter/screens/products_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/backgroundsignin.png",fit: BoxFit.cover,),
          Text("Get your groceries", style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
          SizedBox(height: 5,),
          Text("with nector", style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
          SizedBox(height: 8,),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefix: Icon(Icons.flag)),

          ),
          SizedBox(height: 15,),
          Text("           Or connect with social media           ",style: TextStyle(
            fontSize: 15,
            color: Colors.grey
          ),),
          SizedBox(height: 20,),
          Container(
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductPage();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/google.png"),
                  SizedBox(width: 8,),
                  Text("Continue with Google", style: TextStyle(
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
          ),
          SizedBox(height: 14,),
          Container(
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductPage();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/facebook.png"),
                  SizedBox(width: 8,),
                  Text("Continue with Facebook", style: TextStyle(
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

