import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class ItemMenuSetting extends StatelessWidget {
  const ItemMenuSetting({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: Row(
          children: [
            Icon(icon),
            Dimens.dp12.width,
            Expanded(
              child: RegularText.medium(
                title,
                style: const TextStyle(
                  fontSize: Dimens.dp12,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: context.theme.primaryColor,
              size: Dimens.dp18,
            ),
          ],
        ),
      ),
    );
  }
}
