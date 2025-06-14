// ignore_for_file: constant_identifier_names

import 'interfaces/enum_with_label.dart';

enum TaxRegimeEnum implements EnumWithLabel {
  MEI(0, 'MEI'),
  SimplesNacional(1, 'Simples Nacional'),
  LucroPresumido(2, 'Lucro Presumido'),
  LucroReal(3, 'Lucro Real');

  final int value;
  @override
  final String label;

  const TaxRegimeEnum(this.value, this.label);
}
