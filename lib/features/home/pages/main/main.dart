import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/pos/pages/index/page.dart';
import 'package:kasirsuper/features/product/product.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/transaction/pages/index/page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    const pages = <Widget>[
      HomePage(),
      TransactionPage(),
      POSPage(),
      ProductPage(),
      SettingPage(),
    ];

    return BlocBuilder<BottomNavBloc, int>(
      builder: (context, index) {
        return Scaffold(
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              context.read<BottomNavBloc>().add(TapBottomNavEvent(value));
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
      },
    );
  }
}
