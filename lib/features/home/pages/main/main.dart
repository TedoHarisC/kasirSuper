import 'package:flutter/material.dart';
import 'package:kasirsuper/features/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "POS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Lainnya",
          )
        ],
      ),
    );
  }
}
