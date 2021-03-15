import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/foodcart.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: foodApp(),
    );
  }
}

class foodApp extends StatefulWidget {
  @override
  _foodAppState createState() => _foodAppState();
}

class _foodAppState extends State<foodApp> {

  List<String> imgUrl = [
    "https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png",
    "https://toreys.net/wp-content/uploads/2019/06/steak-fries-400x209-reduced.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff90EBF0),
      appBar: AppBar(
        backgroundColor: Color(0xff3FA0A6),
        title: Text("Food App",style: TextStyle(
            color: Color(0xff295A5C),
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          fontStyle: FontStyle.italic
        ),),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
            color: Color(0xff144E51),
            size: 32.0,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                  Icons.shopping_cart,
                color: Color(0xff144E51),
                size: 32.0,
              ),
              onPressed: (){}
              )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's eat \norder your fodd now",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff1A5D60)
            ),
            ),
            SizedBox(
              height:20.0
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Row(
                children: [
                  Expanded(child:TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20.0)
                    ),
                  )),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    shape : RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30.0)
                    ),
                    color: Color(0xff20B1B8),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )
                      ),
                      onPressed: (){},
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Expanded(
                child:GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    children: [
                      foodCard(imgUrl[0],'Meat Plate', "25"),
                      foodCard(imgUrl[1],'Meat Plate', "25"),
                      foodCard(imgUrl[2],'Meat Plate', "25"),
                      foodCard(imgUrl[3],'Meat Plate', "25"),
                      foodCard(imgUrl[4],'Meat Plate', "25"),
                      foodCard(imgUrl[5],'Meat Plate', "25"),
                    ],
                ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        elevation: 0.0,
        selectedItemColor: Color(0xff20B1B8),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_outlined),
              // ignore: deprecated_member_use
              title: Text('our shop'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              // ignore: deprecated_member_use
              title: Text('Favorite')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text('Profile')
          ),
        ],
      ),
    );
  }
}

