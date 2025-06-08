import 'package:flutter/material.dart';
import 'package:meulog_frontend_components/m_components.dart';

class MTextCenter extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const MTextCenter({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center, style: style ?? AppTextStyles.body);
  }
}
