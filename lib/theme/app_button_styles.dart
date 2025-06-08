import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  );

  static BoxDecoration buttonDecoration = BoxDecoration(
    color: AppColors.primaryBlue100,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 1, color: AppColors.primaryBlue200),
  );

  static TextStyle buttonTextStyle = AppTextStyles.bodyWithFontFamily.copyWith(
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static TextStyle buttonTextStyleTwo = buttonTextStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 14);
}
