import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/settings/settings.dart';

part 'sections/profile_section.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lainnya'),
      ),
      body: ListView(
        children: [
          const _ProfileSection(),
          const Divider(
            thickness: Dimens.dp8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.dp16),
                child: RegularText.semiBold('Akun'),
              ),
              ItemMenuSetting(
                title: 'Informasi Usaha',
                icon: AppIcons.receipt,
                onTap: () {},
              ),
              const Divider(height: 0),
              ItemMenuSetting(
                title: 'API  Key Xendit',
                icon: AppIcons.creditCard,
                onTap: () {},
              ),
            ],
          ),
          const Divider(
            thickness: Dimens.dp8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.dp16),
                child: RegularText.semiBold('Perangkat Tambahan'),
              ),
              ItemMenuSetting(
                title: 'Printer',
                icon: Icons.print,
                onTap: () {},
              ),
              const Divider(height: 0),
              ItemMenuSetting(
                title: 'Atur Struk',
                icon: AppIcons.coupon,
                onTap: () {},
              ),
            ],
          ),
          const Divider(
            thickness: Dimens.dp8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.dp16),
                child: RegularText.semiBold('Info Lainnya'),
              ),
              ItemMenuSetting(
                title: 'Kebijakan Privasi',
                icon: AppIcons.verified,
                onTap: () {},
              ),
              const Divider(height: 0),
              ItemMenuSetting(
                title: 'Beri Rating',
                icon: AppIcons.star,
                onTap: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp16),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: context.theme.colorScheme.error,
                side: BorderSide(color: context.theme.colorScheme.error),
              ),
              onPressed: () {},
              child: const Text('Keluar'),
            ),
          ),
        ],
      ),
    );
  }
}
