import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MarketplaceApp(),
  ));
}

class MarketplaceApp extends StatefulWidget {
  @override
  _MarketplaceAppState createState() => _MarketplaceAppState();
}

class _MarketplaceAppState extends State<MarketplaceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10161D),
      appBar: AppBar(
        backgroundColor: Color(0xFF222e3D),
        title: Text(
          "Marketplace",
          style: TextStyle(
            color: Color(0xFFFF9900),
          ),
        ),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Icon(Icons.shopping_cart, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search...",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Novos Itens",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
