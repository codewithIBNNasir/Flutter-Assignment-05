import 'package:flutter/material.dart';

Widget bannar(String title,String subtitle,dynamic color,String image){ 
  return Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(image))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'On Everything Today',
                style: TextStyle(color: const Color.fromARGB(255, 9, 9, 9),fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                subtitle,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Get Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
);}
Widget salebannar(String title, String subtitle, Color color)
 {
  return SizedBox(
    height: 180,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
       bannar("50% Off", "With code: FSCREATION", Colors.white,'assets/images/50per.png'),
       const SizedBox(width: 15),
          bannar("70% Off", "With code: SALE70", Colors.white,'assets/images/70per.png'),
      //  const SizedBox(width: 30,),
      //  SectionHeader('New Arrivals')



      ],
    ),
  );
}
