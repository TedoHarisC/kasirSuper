import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/image_section.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const routeName = '/settings/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informasi Usaha')),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp16),
        children: [
          const _ImageSection(),
          const Divider(),
          RegularTextInput(
            controller: nameController,
            label: 'Nama Bisnis',
            hintText: 'Kasir SUPER',
          ),
          Dimens.dp24.height,
          RegularTextInput(
            controller: emailController,
            label: 'Email',
            hintText: 'kasirsuper@gmail.com',
            keyboardType: TextInputType.emailAddress,
          ),
          Dimens.dp24.height,
          RegularTextInput(
            controller: phoneController,
            label: 'Phone Number',
            hintText: '08123456789',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.dp16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Simpan'),
          ),
        ),
      ),
    );
  }
}
