import 'package:flutter/material.dart';
import 'package:meulog_shared/theme/app_colors.dart';

class MDataTablePaginated<T> extends StatelessWidget {
  final List<DataColumn> columns;
  final List<T> data;
  final List<DataRow> Function(List<T>) buildRows;
  final int currentPage;
  final int totalPages;
  final VoidCallback? onPreviousPage;
  final VoidCallback? onNextPage;
  final Widget? top;

  const MDataTablePaginated({
    super.key,
    required this.columns,
    required this.data,
    required this.buildRows,
    required this.currentPage,
    required this.totalPages,
    this.onPreviousPage,
    this.onNextPage,
    this.top,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        if (top != null) Padding(padding: const EdgeInsets.all(8.0), child: top),
        Expanded(
          child: data.isEmpty
              ? const Center(child: Text('Nenhum resultado encontrado.'))
              : SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    headingRowColor: WidgetStateProperty.all(AppColors.textThird),
                    headingTextStyle: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold),
                    dataRowColor: WidgetStateProperty.all(AppColors.background),
                    dividerThickness: 1,
                    horizontalMargin: 12,
                    columnSpacing: 24,
                    showBottomBorder: true,
                    columns: columns,
                    rows: buildRows(data),
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: const Icon(Icons.chevron_left), onPressed: onPreviousPage),
              Text('Página $currentPage de $totalPages'),
              IconButton(icon: const Icon(Icons.chevron_right), onPressed: onNextPage),
            ],
          ),
        ),
      ],
    );
  }
}
