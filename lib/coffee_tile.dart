import 'package:flutter/material.dart';

class CoffeeFile extends StatelessWidget {
  final String coffeeImage;
  final String coffeeName;
  final String coffeePrice;
  final String coffeeDesk;

  CoffeeFile({
    required this.coffeeImage,
    required this.coffeeName,
    required this.coffeePrice,
    required this.coffeeDesk,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      //box
      padding: const EdgeInsets.only(left: 25.0, bottom: 55),
      child: Container(
          padding: EdgeInsets.all(20),
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(coffeeImage)),

              //coffee name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 4,
                    ),

                    //coffee deskripsi
                    Text(
                      coffeeDesk,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              //price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\Rp.' + coffeePrice),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 127, 7),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
