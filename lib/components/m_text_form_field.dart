import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';

class MTextFormField extends StatefulWidget {
  final String labelText;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final Color? fillColor;
  final double paddingHorizontal;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode autovalidateMode;
  final FocusNode? focusNode;
  final void Function(String value)? onFieldLostFocus;
  final void Function(String?)? onFieldSubmitted;

  const MTextFormField({
    super.key,
    required this.labelText,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.enabled,
    this.inputFormatters,
    this.keyboardType = TextInputType.text,
    this.fillColor,
    this.paddingHorizontal = 15.0,
    this.controller,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.focusNode,
    this.onFieldLostFocus,
    this.onFieldSubmitted,
  });

  @override
  State<MTextFormField> createState() => _MTextFormFieldState();
}

class _MTextFormFieldState extends State<MTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;

    widget.focusNode?.addListener(() {
      if (!widget.focusNode!.hasFocus) {
        // Chamando a função quando o campo perde o foco
        if (widget.onFieldLostFocus != null && widget.controller != null) {
          widget.onFieldLostFocus!(widget.controller!.text);
        }
      }
    });
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(() {});
    super.dispose();
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
      enabled: widget.enabled,
      focusNode: widget.focusNode,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: widget.fillColor != null,
        labelText: widget.labelText,
        labelStyle: const TextStyle(overflow: TextOverflow.ellipsis),
        prefixIcon: widget.icon != null ? Icon(widget.icon, color: AppColors.neutralLight500) : null,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: AppColors.neutralDark200),
                onPressed: _toggleObscureText,
              )
            : widget.suffixIcon != null
            ? widget.suffixIcon
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.neutralLight500, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.neutralLight500, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.primaryBlue200, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: widget.paddingHorizontal, horizontal: 10.0),
      ),
    );
  }
}
