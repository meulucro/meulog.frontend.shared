import 'package:flutter/material.dart';
import 'package:meulog_shared/components/m_title_text_field.dart';

class MFormSectionHeader extends StatelessWidget {
  final String title;
  final String addLabel;
  final VoidCallback onAdd;
  const MFormSectionHeader({super.key, required this.title, required this.addLabel, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MTitleTextFieldWithouSizedBox(title),
        Align(
          alignment: Alignment.centerRight,
          child: FilledButton.icon(onPressed: onAdd, icon: const Icon(Icons.add), label: Text(addLabel)),
        ),
      ],
    );
  }
}
