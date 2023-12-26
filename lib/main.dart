import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_cart/models/cart.dart';
import 'package:shop_cart/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shopping Cart',
            home: const IntroPage(),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 29, 102, 211)),
              useMaterial3: true,
            ),
            // home: ,
          );
        });
  }
}
