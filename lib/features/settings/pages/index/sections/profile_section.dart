part of '../page.dart';

class _ProfileSection extends StatelessWidget {
  const _ProfileSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp50),
            child: Image.network(
              'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          Dimens.dp16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.semiBold('Kasir SUPER'),
                Dimens.dp4.height,
                const RegularText(
                  'superpos@gmail.com',
                  style: TextStyle(
                    fontSize: Dimens.dp12,
                  ),
                ),
                Dimens.dp4.height,
                const RegularText(
                  '+6282117499922',
                  style: TextStyle(
                    fontSize: Dimens.dp12,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              AppIcons.edit,
              color: context.theme.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
