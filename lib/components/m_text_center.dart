import 'package:flutter/material.dart';
import 'package:meulog_shared/theme.dart';

class MTextCenter extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const MTextCenter(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center, style: style ?? AppTextStyles.body);
  }
}
