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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _FilterSection(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(Dimens.defaultSize),
              children: const [],
            ),
          ),
        ],
      ),
    );
  }
}
