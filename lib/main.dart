import 'package:flutter/material.dart';
import 'color.dart' as warna;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      //biar warna appbar dan scafold sama
      backgroundColor: warna.wPutihColor,
      appBar: AppBar(
        //tambahin ini buat ngilangin shadow
        elevation: 0,
        backgroundColor: warna.wPutihColor,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(color: warna.wHitamColor),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down_sharp),
              color: warna.wHitamColor,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.control_point_outlined),
            color: warna.wHitamColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dehaze_rounded),
            color: warna.wHitamColor,
          )
        ],
      ),
      //buat sebagai lisview ajah
      body: ListView(
        children: [
          // gaperlu ini kejauhan jaraknya
          // SizedBox(
          //   height: 15,
          // ),

          // ini sudah bagus bang
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
                        color: warna.wMerahColor,
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
                children: [
                  Text(
                    "0.000",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Posts")
                ],
              ),
              Column(
                children: [
                  Text(
                    "0.000",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text(
                    "0.000",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Following")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Username",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // Belum Selesai ...
        ],
      ),
    );
  }
}
