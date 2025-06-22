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

DateTime nowInBrazil() {
  final sp = tz.getLocation('America/Sao_Paulo');
  return tz.TZDateTime.now(sp);
}

String? formatDateWithIsoOffset(DateTime? dateTime) {
  if (dateTime == null) return null;

  final isoString = dateTime.toIso8601String();

  // Se já está no formato correto com offset (ex: termina com -03:00 ou +00:00 ou Z)
  if (RegExp(r'([+-]\d{2}:\d{2}|Z)$').hasMatch(isoString)) {
    return isoString;
  }

  // Caso não tenha offset no formato, adiciona o offset correto
  final duration = dateTime.timeZoneOffset;
  final sign = duration.isNegative ? '-' : '+';
  final hours = duration.inHours.abs().toString().padLeft(2, '0');
  final minutes = (duration.inMinutes.abs() % 60).toString().padLeft(2, '0');
  final offset = '$sign$hours:$minutes';

  return '$isoString$offset';
}
