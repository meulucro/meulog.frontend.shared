import 'package:flutter/material.dart';
import 'package:meulog_shared/theme.dart';

class MButton extends StatefulWidget {
  final Color bgColor;
  final Color borderColor;
  final Widget? icon;
  final Function()? onTap;
  final String text;
  final double height;

  const MButton(
    this.text, {
    super.key,
    this.bgColor = AppColors.background,
    this.borderColor = AppColors.neutralLight500,
    this.icon,
    this.onTap,
    this.height = 48,
  });

  @override
  State<MButton> createState() => _MButtonState();
}

class _MButtonState extends State<MButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(8.0),
      child: Ink(
        decoration: AppDecoration.boxDecInk(color: widget.bgColor, borderColor: widget.borderColor),
        height: widget.height,
        width: double.infinity,
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              if (widget.icon != null) ...{widget.icon!, const SizedBox(width: 12)},
              Text(
                widget.text,
                style: const TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
