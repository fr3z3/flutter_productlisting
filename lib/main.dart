import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(
        title: 'product layout demo home page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STORE NATUS"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "iPhone",
            description: "iphone terbaru bagus & berkualitas",
            price: 16000000,
            image: "iphone.jpg",
          ),
          ProductBox(
            name: "Celana",
            description: "celana jeans tidak mudah sobek",
            price: 800000,
            image: "celana.jpg",
          ),
          ProductBox(
            name: "Laptop",
            description: "laptop terbaru murah meriah",
            price: 9000000,
            image: "laptop.jpg",
          ),
          ProductBox(
            name: "Baju Converse",
            description: "pernah dipake justin biber",
            price: 1500000,
            image: "kaos.jpg",
          ),
          ProductBox(
            name: "Sepatu",
            description: "anti api & bisa lari cepet",
            price: 1000000,
            image: "sepatu.jpg",
          ),
          ProductBox(
            name: "Topi",
            description: "ada tanda tangan selena gomes",
            price: 600000,
            image: "topi.jpg",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("image/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}