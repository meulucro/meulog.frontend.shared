import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils.dart';

class MButtonWithLoading extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? widget;
  final bool disable;
  final bool loading;

  const MButtonWithLoading({
    super.key,
    required this.text,
    required this.onPressed,
    this.widget,
    this.disable = false,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final buttonDecoration = disable
        ? AppButtonStyles.buttonDecoration.copyWith(
            color: AppColors.neutralLight300,
            border: Border.all(width: 1, color: AppColors.neutralLight500),
          )
        : AppButtonStyles.buttonDecoration;

    final buttonTextStyle = disable
        ? AppButtonStyles.buttonTextStyle.copyWith(color: AppColors.neutralDark200)
        : AppButtonStyles.buttonTextStyle;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: disable ? null : onPressed,
        borderRadius: BorderRadius.circular(8.0),
        child: Ink(
          width: double.infinity,
          height: 48.0,
          padding: EdgeInsets.zero,
          decoration: buttonDecoration,
          child: !loading
              ? Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(child: Text(text, style: buttonTextStyle)),
                      if (widget != null) ...{
                        Row(children: [mWidth(), widget!]),
                      },
                    ],
                  ),
                )
              : const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [SizedBox(height: 28.0, width: 28.0, child: CircularProgressIndicator())],
                ),
        ),
      ),
    );
  }
}
