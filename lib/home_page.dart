import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/coffee_tile.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app navigasi
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.home),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      //bottom navigasi
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
      ]),

      //TITTLE
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.montserrat(fontSize: 40),
            ),
          ),

          //serch bar
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'find your favorite coffee. . .☕️',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),

          //coffee tile
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeFile(
                coffeeImage: 'images/latte.jpg',
                coffeeName: 'cappucino',
                coffeeDesk: 'with chocolate',
                coffeePrice: 'Rp.50.000',
              ),
              CoffeeFile(
                coffeeImage: 'images/matcha.jpg',
                coffeeName: 'Matcha Latte',
                coffeeDesk: 'with foam',
                coffeePrice: 'Rp.60.000',
              ),
              CoffeeFile(
                coffeeImage: 'images/americano.jpg',
                coffeeName: 'americano',
                coffeeDesk: 'less sugar',
                coffeePrice: 'Rp.40.000',
              ),
            ],
          ))
        ],
      ),
    );
  }
}






      