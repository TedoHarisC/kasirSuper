part of '../page.dart';

class _FilterSection extends StatefulWidget {
  const _FilterSection();

  @override
  State<_FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<_FilterSection> {
  String selected = 'Done';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildContainer(context, label: "Done"),
          Dimens.dp12.width,
          _buildContainer(context, label: "Draft"),
        ],
      ),
    );
  }

  Widget _buildContainer(BuildContext context, {required String label}) {
    final bool isActive = selected == label;

    return InkWell(
      onTap: () {
        setState(() {
          selected = label;
        });
      },
      borderRadius: BorderRadius.circular(Dimens.dp8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp8,
          horizontal: Dimens.dp16,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.dp8),
            color: isActive ? context.theme.primaryColor : null,
            border: Border.all(
              color: isActive ? context.theme.primaryColor : AppColors.white,
            )),
        child: RegularText.semiBold(
          label,
          style: TextStyle(
            fontSize: Dimens.dp12,
            color: isActive ? AppColors.white : AppColors.black[200],
          ),
        ),
      ),
    );
  }
}
