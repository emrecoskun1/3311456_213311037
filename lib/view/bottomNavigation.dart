import 'package:flutter/material.dart';

import 'homePageView.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          color: Color(0xFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavigationIcon(
                  iconData: Icons.home, active: true, text: Text("Anasayfa")),
              buildNavigationIcon(
                  iconData: Icons.search_sharp,
                  active: false,
                  text: Text("Arama")),
              buildNavigationIcon(
                  iconData: Icons.shopping_cart_sharp,
                  active: false,
                  text: Text("Sepet")),
              buildNavigationIcon(
                  iconData: Icons.favorite_sharp,
                  active: false,
                  text: Text("Favoriler")),
              buildNavigationIcon(
                  iconData: Icons.person_pin,
                  active: false,
                  text: Text("Profilim"))
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildNavigationIcon({
  required IconData iconData,
  required bool active,
  required Text text,
}) {
  return Icon(
    iconData,
    size: 25,
    color: Color(active ? 0xFF724D3C : 0xFF8F8F8F),
  );
  TextBox textBox;
}
