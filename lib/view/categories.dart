import 'package:flutter/material.dart';
import 'package:mobil_vize/components/bottomNavigationBar.dart';
import 'package:mobil_vize/components/header.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = [
    "Bilgisayarlar",
    "Akıllı Telefonlar",
    "Tabletler",
    "Aksesuarlar",
    "Kulaklıklar",
    "Ev Aletleri ",
    "Bilgisayarlar",
    "Akıllı Telefonlar",
    "Tabletler",
    "Aksesuarlar",
    "Kulaklıklar",
    "Ev Aletleri ",
    "Bilgisayarlar",
    "Akıllı Telefonlar",
    "Tabletler",
    "Aksesuarlar",
    "Kulaklıklar",
    "Ev Aletleri ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header("KATEGORİLER", context),

              //kategoriler
              SizedBox(height: 24),

              SizedBox(height: 16),

              Expanded(
                child: ListView(
                  children: categories
                      .map((String title) => buildCategory(title))
                      .toList(),
                ),
              )
            ],
          )),
      bottomNavigationBar(),
    ])));
  }
}

Widget buildCategory(String title) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 217, 218, 218),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: Colors.blueAccent.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4)),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A1034)),
      ),
    ),
  );
}
