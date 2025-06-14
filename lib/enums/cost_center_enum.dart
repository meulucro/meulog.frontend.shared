// ignore_for_file: constant_identifier_names

import 'package:meulog_shared/enums.dart';

enum CostCenterEnum implements EnumWithLabel {
  ADM(0, 'ADM'),
  Commercial(1, 'Comercial'),
  Production(2, 'Produção'),
  Expedition(3, 'Operação'),
  Logistics(4, 'Logística');

  final int value;
  @override
  final String label;

  const CostCenterEnum(this.value, this.label);
}
