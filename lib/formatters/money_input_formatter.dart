import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyInputFormatter extends TextInputFormatter {
  final NumberFormat _formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove tudo que não for número
    String newText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Se o texto estiver vazio, não formate
    if (newText.isEmpty) {
      return newValue.copyWith(text: '', selection: const TextSelection.collapsed(offset: 0));
    }

    // Converta o texto para um número e divida por 100 para centavos
    double value = double.parse(newText) / 100;

    // Formata o número como moeda
    String formattedText = _formatter.format(value);

    // Calcula a nova posição do cursor
    int offset = formattedText.length - (newValue.text.length - newValue.selection.end);

    // Garante que o offset seja válido
    offset = offset < 0 ? 0 : offset;

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: offset),
    );
  }
}
