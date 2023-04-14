import 'package:flutter/material.dart';
import 'package:mobil_vize/components/bottomNavigationBar.dart';
import 'package:mobil_vize/view/profilePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double width = (screenWidth - 40) * (0.5);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListView(
                  children: [
                    //BASLIK
                    buildTitle(),
                    //BANNER
                    buildBanner(),
                    // BUTONLAR
                    Padding(
                      padding: const EdgeInsets.only(top: 48),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildNavigation(
                                text: 'Kategoriler',
                                icon: Icons.menu,
                                route: "/categoriesPage",
                                context: context),
                            buildNavigation(
                                text: 'Favorilerim',
                                icon: Icons.star_border,
                                route: "/favoritesPage",
                                context: context),
                            buildNavigation(
                                text: 'Giriş Ekranı',
                                icon: Icons.card_giftcard,
                                route: "/loginPage",
                                context: context),
                            buildNavigation(
                                text: 'Profilim',
                                icon: Icons.people_outline,
                                route: "/profilePage",
                                context: context),
                          ]),
                    ),
                    //const Page2(),
                    const SizedBox(height: 48),
                    //SALES TİTLE
                    const Center(
                      child: Text(
                        "Ürünler",
                        style: TextStyle(
                          color: Color(0xFF0A1034),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    //SALES İTEMS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildSalesItem(
                          text: "Iphone 14 Pro",
                          photoUrl: "assets/images/ip14.png",
                          discount: "50",
                          screenWidth: width,
                        ),
                        buildSalesItem(
                          text: "Iphone 14 Pro",
                          photoUrl: "assets/images/ip14.png",
                          discount: "50",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildSalesItem(
                          text: "Iphone 14 Pro",
                          photoUrl: "assets/images/ip14.png",
                          discount: "50",
                          screenWidth: width,
                        ),
                        buildSalesItem(
                          text: "Iphone 14 Pro",
                          photoUrl: "assets/images/ip14.png",
                          discount: "50",
                          screenWidth: width,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //BOTTOM NAVİGATİON BAR

            bottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}

Widget buildSalesItem({
  required String text,
  required String photoUrl,
  required String discount,
  required double screenWidth,
}) {
  return Container(
    color: Color.fromARGB(255, 217, 218, 218),
    width: (screenWidth),
    padding: EdgeInsets.only(right: 12, top: 12, bottom: 21, left: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //%50
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0xFFE0ECF8)),
          child: Text(
            discount,
            style: TextStyle(color: Color(0xFF1F53E4), fontSize: 12),
          ),
        ),

        //telefon resmi
        Center(child: Image.asset(photoUrl)),

        //ismi
        Center(
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
      ],
    ),
  );
}

Widget buildTitle() {
  return const Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Text(
      'SEGMEN',
      style: TextStyle(
          fontSize: 32, color: Color(0xFF0A2452), fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildBanner() {
  return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        width: double.infinity,
        padding:
            const EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Bose Home Speaker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "USD 279",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
                width: 80,
                height: 50,
                child: Image.asset("assets/images/speaker.png")),
          ],
        ),
      ));
}

Widget buildNavigation({
  required String route,
  required String text,
  required IconData icon,
  //Widget? widget,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 217, 218, 218)),
          child: Icon(
            icon,
            color: Colors.black,
            size: 18,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
