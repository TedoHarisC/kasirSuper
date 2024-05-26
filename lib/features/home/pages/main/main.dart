import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/pos/pages/index/page.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/transaction/pages/index/page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const <Widget>[
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.storefront),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.receipt),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.pos),
            label: "POS",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.product),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.settings),
            label: "Lainnya",
          )
        ],
      ),
    );
  }
}
