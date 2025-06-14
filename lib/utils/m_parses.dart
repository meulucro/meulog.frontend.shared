/// Converte uma string de valor monetário em formato BR para um double.
double? mParseCurrency(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  String cleanedValue = value.replaceAll(RegExp(r'[^\d,]'), '').replaceAll(',', '.');
  return cleanedValue.isNotEmpty ? double.tryParse(cleanedValue) : null;
}
