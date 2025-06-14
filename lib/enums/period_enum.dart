// ignore_for_file: constant_identifier_names

import 'package:meulog_shared/enums.dart';

enum PeriodEnum implements EnumWithLabel {
  Hour(0, 'Hora'),
  Day(1, 'Dia'),
  Month(2, 'Mês');

  final int value;
  @override
  final String label;

  const PeriodEnum(this.value, this.label);
}
