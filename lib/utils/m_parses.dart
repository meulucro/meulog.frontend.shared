/// Converte uma string de valor monetário em formato BR para um double.
double? mParseCurrency(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  String cleanedValue = value.replaceAll(RegExp(r'[^\d,]'), '').replaceAll(',', '.');
  return cleanedValue.isNotEmpty ? double.tryParse(cleanedValue) : null;
}

/// Converte uma string em um double, retornando 0.0 se a conversão falhar.
double mParseStringToDouble(String? value) {
  if (value == null || value.isEmpty) return 0.0;

  value = value.replaceAll(',', '.');

  double? parse = double.tryParse(value);
  if (parse == null) return 0.0;

  return parse;
}

/// Converte um double em uma string com vírgula como separador decimal.
String mParseDoubleToString(double? value) {
  if (value == null) return '';
  return value.toString().replaceAll('.', ',');
}

/// Converte um int em uma string.
String mParseIntToString(int? value) {
  if (value == null) return '';
  return value.toString();
}

/// Se o valor for nulo, retorna uma string vazia; caso contrário, retorna o valor.
String mParseString(String? value) {
  if (value == null) return '';
  return value;
}
