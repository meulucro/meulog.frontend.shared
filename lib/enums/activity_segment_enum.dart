import 'interfaces/enum_with_label.dart';

enum ActivitySegmentEnum implements EnumWithLabel {
  Industry(0, 'Indústria'),
  Commerce(1, 'Comércio'),
  Service(2, 'Serviço'),
  Agro(3, 'Agro'),
  Other(4, 'Outro');

  final int value;
  @override
  final String label;

  const ActivitySegmentEnum(this.value, this.label);
}
