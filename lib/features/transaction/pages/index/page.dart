import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/filter_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          children: [
            _FilterSection(),
          ],
        ),
      ),
    );
  }
}
