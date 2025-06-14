// ignore_for_file: constant_identifier_names

import 'interfaces/enum_with_label.dart';

enum UserRole implements EnumWithLabel {
  Operador(0, 'Operador'),
  Motorista(1, 'Motorista'),
  Administrador(2, 'Administrador'),
  Ajudante(3, 'Ajudante'),
  System(4, 'System');

  final int value;
  @override
  final String label;

  const UserRole(this.value, this.label);
}
