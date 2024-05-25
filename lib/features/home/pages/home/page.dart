import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/card_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _CardSection(
              title: 'Total Penjualan',
              value: 'Rp. 5.000.000.0000',
            ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Transaksi',
              value: '300.000',
            ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Produk',
              value: '654',
            ),
          ],
        ),
      ),
    );
  }
}
