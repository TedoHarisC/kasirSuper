import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SearchTextInput extends StatelessWidget {
  const SearchTextInput({
    super.key,
    required this.hintText,
    this.controller,
    this.onChanged,
  });

  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return RegularTextInput(
      hintText: hintText,
      prefixIcon: AppIcons.search,
      controller: controller,
      onChanged: onChanged,
    );
  }
}
