part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.dp8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1581074817932-af423ba4566e?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: 74,
                  height: 74,
                  fit: BoxFit.cover,
                ),
              ),
              Dimens.dp12.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText.semiBold('Fresh Watermelon'),
                    Dimens.dp8.height,
                    RegularText.semiBold('Rp 18.900 / kg'),
                  ],
                ),
              ),
            ],
          ),
          Dimens.dp18.height,
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Edit'),
                ),
              ),
              Dimens.dp16.width,
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Delete'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
