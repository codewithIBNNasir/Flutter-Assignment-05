import 'package:assignment_5/home.dart';
import 'package:flutter/material.dart';

Widget productdetail(BuildContext context,dynamic image,String brand,String name, String price) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.grey[200],
                child: Center(
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homeview()),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      brand,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text('-', style: TextStyle(fontSize: 20)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text('1', style: TextStyle(fontSize: 16)),
                          ),
                          Text('+', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(
                  'Size',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: ['39', '39.5', '40', '40.5', '41'].map((size) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        shape: BoxShape.circle,
                        color: size == '41' ? Colors.black : Colors.transparent,
                      ),
                      child: Text(
                        size,
                        style: TextStyle(
                          color: size == '41' ? Colors.white : Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Engineered to crush any movement-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair.',
                  style: TextStyle(color: Colors.grey[600], height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Price', style: TextStyle(color: Colors.grey)),
              Text(
                price,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag, color: Colors.white),
            label: Text('Add to cart', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
