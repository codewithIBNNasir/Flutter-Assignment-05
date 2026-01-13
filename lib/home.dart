import 'package:assignment_5/Mostwanted.dart';
import 'package:assignment_5/arrivals.dart';
import 'package:assignment_5/details.dart';
import 'package:assignment_5/header.dart';
import 'package:assignment_5/salebannar.dart';
import 'package:flutter/material.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Mainheader(),
              const SizedBox(height: 20),
              salebannar('On Every Thing Today', 'get now', Colors.black),
              const SizedBox(height: 30),
              SectionHeader('New Arrivals'),
              const SizedBox(height: 20),
              arrivals(context),
              const SizedBox(height: 30),
              SectionHeader('Popular Items'),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => productdetail(
                        context,
                        'assets/images/ppic.jpg',
                        'Nike',
                        'Bestest Men\'s Shoes',
                        '\$600.00',
                      ),
                    ),
                  );
                },
                child: popular_item(
                  'Nike',
                  'Bestest Men\'s Shoes',
                  'assets/images/ppic.jpg',
                  '\$600.00',
                ),
              ),
              const SizedBox(height: 30),
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
                },
                child: popular_item(
                  '  Addidas',
                  '  DROPSET 4',
                  'assets/images/DROPSET.png',
                  '\$145',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
