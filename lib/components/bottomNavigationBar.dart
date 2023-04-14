import 'package:flutter/material.dart';
import 'package:mobil_vize/view/bottomNavigation.dart';

Widget bottomNavigationBar() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10),
        ],
        color: Color(0xFFEFF5FB),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavigationIcon(
            iconData: Icons.home,
            active: true,
            text: Text("Anasayfa"),
          ),
          buildNavigationIcon(
            iconData: Icons.search,
            active: false,
            text: Text("Arama"),
          ),
          buildNavigationIcon(
              iconData: Icons.shopping_cart,
              active: false,
              text: Text("Sepetim")),
          buildNavigationIcon(
              iconData: Icons.favorite,
              active: false,
              text: Text("Favorilerim")),
          buildNavigationIcon(
              iconData: Icons.person_sharp,
              active: false,
              text: Text("Profilim")),
        ],
      ),
    ),
  );
}

Widget buildNavigationIcon({
  required IconData iconData,
  required bool active,
  required Text text,
}) {
  return Icon(
    iconData,
    size: 25,
    color: Color(active ? 0xFF0A1034 : 0xFF8F8F8F),
  );

  TextBox textBox;
}
