// ignore_for_file: constant_identifier_names

import 'interfaces/enum_with_label.dart';

enum LegalClassificationEnum implements EnumWithLabel {
  MEI(0, 'MEI'),
  ME(1, 'ME'),
  EPP(2, 'EPP'),
  Medium(3, 'Média'),
  Large(4, 'Grande');

  final int value;
  @override
  final String label;

  const LegalClassificationEnum(this.value, this.label);
}
