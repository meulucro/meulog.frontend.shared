import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: AppColors.primary);

  static const TextStyle subheading = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(fontSize: 16.0, color: AppColors.textPrimary);

  static const TextStyle bodyWithFontFamily = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 16,
    fontFamily: 'Open Sans',
  );

  static const TextStyle bodyWithFontFamilyBlack = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontFamily: 'Open Sans',
  );

  static const TextStyle captionWithFontFamilyBlack = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontFamily: 'Open Sans',
  );

  static const TextStyle captionWithFontFamilyPrimary = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontFamily: 'Open Sans',
  );

  static const TextStyle caption = TextStyle(fontSize: 14.0, color: AppColors.textSecondary);

  static const TextStyle captionColorPrimary = TextStyle(fontSize: 14.0, color: AppColors.textPrimary);

  static const TextStyle captionDark200 = TextStyle(fontSize: 14.0, color: AppColors.neutralDark200);

  static const TextStyle textSubline = TextStyle(color: AppColors.neutralDark200, fontSize: 16);

  static const TextStyle textColorSecondy = TextStyle(
    color: AppColors.secondary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle textColorDark40016 = TextStyle(
    color: AppColors.neutralDark400,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle textColorDark40014 = TextStyle(
    color: AppColors.neutralDark400,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle textColorDark20012 = TextStyle(color: AppColors.neutralDark200, fontSize: 12);

  static const TextStyle textColorDark20012w5 = TextStyle(
    color: AppColors.neutralDark200,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
