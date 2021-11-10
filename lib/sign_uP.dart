import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Buy",
          style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        actions: [
          CircleAvatar(
            radius:30,
             backgroundImage: AssetImage("assets/images/1.jpg",),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset("assets/images/by.jpg",width: 150,height: 150,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              CarouselSlider(
                  items:  [
                    Container(
                      child: Image.asset("assets/images/pp.jpg"),
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/pp2.png"),
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/pp3.jpg"),
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/pp4.jpg"),
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/pp5.jpg"),
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    aspectRatio: 2.8,
                    autoPlay: true,
                  ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: GridView.count(
                      crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 5,
                    children: [
                      customGridView("assets/images/p7.jpg",5000),
                      customGridView("assets/images/p8.jpg", 310),
                      customGridView("assets/images/p55.png", 3500),
                      customGridView("assets/images/p56.jpg", 7080),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
Widget customGridView(img,price){
  return Container(
    child: Column(
      children: [
        Image.asset(img,width: 120,height: 120,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("$price\$",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              radius: 25,
            ),
            CircleAvatar(
              backgroundColor: Colors.black,
              child:Icon(Icons.add_shopping_cart,color: Colors.white,),
              radius: 25,
            ),
          ],
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 8,
        ),
      ],
    ),
  );
}
