import 'package:flutter/material.dart';
import 'package:mobil_vize/view/categories.dart';
import 'package:mobil_vize/view/favoritesPage.dart';
import 'package:mobil_vize/view/homePageView.dart';
import 'package:mobil_vize/view/loginPage.dart';
import 'package:mobil_vize/view/profilePage.dart';
import 'package:mobil_vize/view/splashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String _title = ('BEYMEN');

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/profilePage': (context) => ProfilePage(),
        '/homePage': (context) => HomePage(),
        '/categoriesPage': (context) => CategoriesPage(),
        '/favoritesPage': (context) => FavoritesPage(),
      },
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
