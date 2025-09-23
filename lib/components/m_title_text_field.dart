import 'package:flutter/material.dart';
import 'package:meulog_shared/theme/app_colors.dart';
import 'package:meulog_shared/theme/app_text_styles.dart';
import 'package:meulog_shared/utils/m_spacing.dart';

class MTitleTextField extends StatelessWidget {
  final String title;
  const MTitleTextField(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppTextStyles.textColorSecondy.copyWith(color: AppColors.primary)),
        mHeight(10),
      ],
    );
  }
}

class MTitleTextFieldWithouSizedBox extends StatelessWidget {
  final String title;
  final bool showSubHeader;
  final bool showHeader;
  final String titleSubHeader;
  final Color textColor;

  const MTitleTextFieldWithouSizedBox(
    this.title, {
    super.key,
    this.showSubHeader = false,
    this.showHeader = true,
    this.titleSubHeader = '',
    this.textColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showHeader) ...[Text(title, style: AppTextStyles.textColorSecondy.copyWith(color: textColor))],
        if (showSubHeader) ...[Text(titleSubHeader, style: AppTextStyles.textColorSecondy.copyWith(fontSize: 14.0))],
      ],
    );
  }
}
