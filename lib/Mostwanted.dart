import 'package:flutter/material.dart';

Widget popular(String brand, String name, String price, String image) {
  return Column(
    children: [
      Container(
        height: 180, 
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(
            color: const Color(0xFF000000),
            width: 4.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(25),
        ),

        child: Image.asset(image),
      ),
      const SizedBox(height: 8),
      Text(brand, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(name, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      Text(
        price,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          textBaseline: .alphabetic,
        ),
      ),
    ],
  );
}

Widget popular_item(String brand,String name,String image,String price) {
  return Container(
    padding: const EdgeInsets.all(12),
    width: 500,
    color: const Color.fromARGB(255, 240, 243, 244),
    child: Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: const Color(0xFF000000),
            width: 4.0,
            style: BorderStyle.solid,
          ), 
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
          child: Image.asset(image),
          
        ),
        SizedBox(width: 14,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(brand, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(name, style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        const Spacer(),
         Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
       
            
          ],
        )
  );
}
