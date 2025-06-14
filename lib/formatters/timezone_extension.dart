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
