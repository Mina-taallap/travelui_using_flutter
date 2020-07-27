import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:SingleChildScrollView(

        child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        new Container(
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/nures.jpg'),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(.2),
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "what you would like to find ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "search for cities,places .... ",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13)),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Best Destination",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      makeItem(
                          image: 'assets/images/canada.jpg', title: "Canada"),
                      makeItem(image: 'assets/images/Italy.jpg', title: "Italy"),
                      makeItem(image: 'assets/images/greece.jpg', title: "Greece"),
                      makeItem(image: 'assets/images/united-states.jpg', title: "United States"),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1.5/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(.2)
                        ),
                        child: Icon(Icons.hotel,color: Colors.blue,),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1.5/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Icon(Icons.flight,color: Colors.red,),
                      ),
                    ),  AspectRatio(
                      aspectRatio: 1.5/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Icon(Icons.event,color: Colors.green,),
                      ),
                    ),
                  ],),
                ),
                SizedBox(height: 30,),
                Text(
                  "Best Hotels",

                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: 20,),
                Container(

                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      makeItem(
                          image: 'assets/images/canada.jpg', title: "Canada"),
                      makeItem(image: 'assets/images/Italy.jpg', title: "Italy"),
                      makeItem(image: 'assets/images/greece.jpg', title: "Greece"),
                      makeItem(image: 'assets/images/united-states.jpg', title: "United States"),
                    ],
                  ),

                ),
                SizedBox(height: 88),
              ],
            ))
      ],
    )));
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                alignment: Alignment.bottomLeft)),
      ),
    );
  }
}
