import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDecoration {
  static const Decoration borderCircularTop = BoxDecoration(
    color: AppColors.background,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
    boxShadow: [BoxShadow(color: AppColors.neutralLight500, spreadRadius: 0.3)],
    border: Border(top: BorderSide(color: AppColors.neutralLight400, width: 1)),
  );

  static Decoration boxDecInk({
    Color color = AppColors.background,
    double circular = 10.0,
    Color borderColor = AppColors.neutralLight500,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(circular),
      border: Border.all(color: borderColor),
    );
  }

  static ShapeBorder borderCard = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(color: AppColors.neutralLight400),
  );
}
