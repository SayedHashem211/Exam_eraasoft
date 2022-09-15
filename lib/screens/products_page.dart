import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {


  List <Image> products = [
    Image.asset("assets/vegetable.png"),
    Image.asset("assets/oil.png"),
    Image.asset("assets/meet.png"),
    Image.asset("assets/bakery.png"),
    Image.asset("assets/dairy.png"),
    Image.asset("assets/beverages.png"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Find Products",style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 25,),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefix: Icon(Icons.search),
                hintText: "Search Store"
              ),
              ),

            SizedBox(height: 10,),
            GridView.count(
                crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children:
                List.generate(products.length, (index) => GridTile(child: products[index]))
            )
          ],
        ),
      ),
    );
  }
}
