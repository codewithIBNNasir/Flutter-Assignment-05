import 'package:assignment_5/details.dart';
import 'package:flutter/material.dart';

Widget product( String brand, String name, String price, String image) {
  return Column(
  children: [
     Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: const Color(0xFF000000),
            width: 4.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: 
Center(child: Image(image: AssetImage(image)),),
     ),
      const SizedBox(height: 8),
      Text(brand, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(name, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      Text(price, style: const TextStyle(fontWeight: FontWeight.bold,textBaseline:.alphabetic)),
  ] 
  );
}

Widget arrivals(context) {
  return SizedBox(
    height: 215,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
        onTap: () {
          Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => productdetail(
                context,
          'assets/images/DROPSET.png',
                '  Addidas',
          '  DROPSET 4',
          '\$145',
              ),
            ),
          );
        },child: 
      Expanded(
        child: product(
          '  Addidas',
          '  DROPSET 4',
          '\$145',
          'assets/images/DROPSET.png',
        ),
      ),),
      const SizedBox(width: 15),
       GestureDetector(
        onTap: () {
          Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => productdetail(
                context,
          'assets/images/shoes2.png',
                'Nike',
          'GrandPrø Ashland Traverse',
          '\$90'
      
            ),
          ));
        },child: 
      Expanded(
        child: product(
          'Nike',
          'GrandPrø Ashland Traverse',
          '\$90',
          'assets/images/shoes2.png',
        ),
      ),),
      const SizedBox(width: 15),
       GestureDetector(
        onTap: () {
          Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => productdetail(
                context,
          'assets/images/clean90.png',
               'Axel Arigato',
          'Clean90',
          '\$285',
              ),
            ),
          );
        },child: 
      Expanded(
        child: product(
          'Axel Arigato',
          'Clean90',
          '\$285',
          'assets/images/clean90.png',
        ),
      ),
    )],
    ),
  );
}
