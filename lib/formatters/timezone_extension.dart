import 'package:timezone/timezone.dart' as tz;

extension BrazilTimeZoneExtension on DateTime {
  /// Converte o `DateTime` atual para o fuso horário de São Paulo (Horário de Brasília).
  tz.TZDateTime convertBrazilTime() {
    // if (this == null) {
    //   return null; // Retorna nulo se o objeto for nulo.
    // }

    // Define a localização para São Paulo (Horário de Brasília).
    var brazilTimeZone = tz.getLocation('America/Sao_Paulo');

    // Converte o DateTime para o fuso horário do Brasil.
    return tz.TZDateTime.from(this, brazilTimeZone);
  }
}

extension DateTimeIsoOffsetExtension on DateTime? {
  String? formatDateWithIsoOffset() {
    if (this == null) return null;

    // Já gera o ISO sem offset ou Z no final
    var baseIso = this!.toIso8601String();

    // Remove qualquer offset já presente (ex: -0300, -03:00, +00:00, Z)
    baseIso = baseIso.replaceAll(RegExp(r'([+-]\d{2}:\d{2}|[+-]\d{4}|Z)$'), '');

    // Calcula o offset correto
    final duration = this!.timeZoneOffset;
    final sign = duration.isNegative ? '-' : '+';
    final hours = duration.inHours.abs().toString().padLeft(2, '0');
    final minutes = (duration.inMinutes.abs() % 60).toString().padLeft(2, '0');
    final offset = '$sign$hours:$minutes';

    return '$baseIso$offset';
  }
}

DateTime nowInBrazil() {
  final sp = tz.getLocation('America/Sao_Paulo');
  return tz.TZDateTime.now(sp);
}

DateTime? parseAsBrazilTime(String? dateString) {
  if (dateString == null) return null;

  // Verifica se a string contém offset ou Z
  final hasOffset = RegExp(r'([+-]\d{2}:\d{2}|Z)$').hasMatch(dateString);

  if (hasOffset) {
    // Já tem timezone na string, pode parsear normalmente
    return DateTime.parse(dateString);
  }

  // Não tem offset, vamos assumir São Paulo
  final parsed = DateTime.parse(dateString);
  final location = tz.getLocation('America/Sao_Paulo');
  final tzDate = tz.TZDateTime(
    location,
    parsed.year,
    parsed.month,
    parsed.day,
    parsed.hour,
    parsed.minute,
    parsed.second,
    parsed.millisecond,
    parsed.microsecond,
  );

  return tzDate;
}
