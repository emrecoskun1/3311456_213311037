import 'package:flutter/material.dart';
import 'package:mobil_vize/view/loginPage.dart';

import '../main.dart';
import 'homePageView.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    OrdersPage(),
    QrPaymentPage(),
    StoresPage(),
    AboutPage(),
    GuidePage(),
    TermsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          _selectedIndex == 0 ? 'Giriş Yap' : 'Üye Ol',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Sipariş Takibi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR ile Ödeme Yap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Mağazalar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Hakkında',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'İşlem Rehberi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Kampanya Koşulları',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Sipariş Takibi'),
      ),
    );
  }
}

class QrPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('QR ile Ödeme Yap'),
      ),
    );
  }
}

class StoresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Mağazalar'),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hakkında'),
      ),
    );
  }
}

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('İşlem Rehberi'),
      ),
    );
  }
}

class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Kampanya Koşulları'),
      ),
    );
  }
}
