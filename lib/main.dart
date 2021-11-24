import 'package:flutter/material.dart';
import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: wPutihColor,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: wHitamColor),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_sharp),
              color: wHitamColor,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.control_point_outlined),
            color: wHitamColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dehaze),
            color: wHitamColor,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 110,
                height: 110,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: wMerahColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/536/354"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [Text("0.000"), Text("Posts")],
              ),
              Column(
                children: [Text("0.000"), Text("Followers")],
              ),
              Column(
                children: [Text("0.000"), Text("Following")],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("Username"),
        ],
      ),
    );
  }
}