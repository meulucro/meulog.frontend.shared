import 'package:flutter/material.dart';

class MTableContainer extends StatelessWidget {
  final Widget child;
  final double minWidth;
  final double maxIdealWidth;

  const MTableContainer({super.key, required this.child, this.minWidth = 600, this.maxIdealWidth = 1200});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scrollController = ScrollController();

        return Scrollbar(
          controller: scrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: IntrinsicWidth(child: child),
          ),
        );
      },
    );
  }
}
