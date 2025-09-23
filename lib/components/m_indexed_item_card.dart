import 'package:flutter/material.dart';
import 'package:meulog_shared/components/m_icon_delete.dart';
import 'package:meulog_shared/theme/app_colors.dart';

class MIndexedItemCard extends StatelessWidget {
  final int index;
  final String baseTitle;
  final bool isDuplicate;
  final VoidCallback? onDeleteAsync;
  final List<Widget> children;

  const MIndexedItemCard({
    super.key,
    required this.index,
    required this.baseTitle,
    required this.isDuplicate,
    required this.onDeleteAsync,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      color: isDuplicate ? AppColors.red : null,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          runSpacing: 10.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$baseTitle ${index + 1}', style: Theme.of(context).textTheme.titleMedium),
                MIconDelete(deleteItemAsync: onDeleteAsync),
              ],
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}
