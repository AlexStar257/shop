import 'package:flutter/material.dart';
import 'package:shop_cart/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 50, right: 50),
            child: Image.asset(
              'assets/intro.png',
              height: currentHeight * 0.2,
            ),
          ),
          const Text(
            'Just Do It.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          SizedBox(height: currentHeight * 0.2),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding:
                    EdgeInsets.only(right: 60, left: 60, top: 15, bottom: 15),
                child: Text(
                  'Shop Now.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: currentHeight * 0.2),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: const Text(
              'Brand new sneakers and custom kicks made with premium quality.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
