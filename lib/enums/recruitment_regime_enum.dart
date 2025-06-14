// ignore_for_file: constant_identifier_names

import 'package:meulog_shared/enums.dart';

enum RecruitmentRegimeEnum implements EnumWithLabel {
  CLT(0, 'CLT'),
  Contract(1, 'Contrato'),
  DailyWorker(2, 'Diarista'),
  Trainee(3, 'Estagiario');

  final int value;
  @override
  final String label;

  const RecruitmentRegimeEnum(this.value, this.label);
}
