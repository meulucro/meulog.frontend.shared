import 'package:intl/intl.dart';

class Formatters {
  static String formatDateBr(DateTime date) {
    return DateFormat('dd/MM/yyyy', 'pt_BR').format(date);
  }

  static String formatDateMonthYear(DateTime date) {
    return DateFormat('MM/yyyy', 'pt_BR').format(date);
  }

  static String formatDateMonthYearDescription(DateTime date) {
    return DateFormat('MMMM yyyy', 'pt_BR').format(date);
  }

  static String formateStringToMonthYear(String month) {
    DateTime parsedDate = DateFormat('yyyy-MM').parse(month);
    return DateFormat('MMMM yyyy', 'pt_BR').format(parsedDate);
  }

  static String formatValueMoney(double? value) {
    return value != null ? NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value) : '';
  }

  static String formatValueDecimal(double? value) {
    return value != null ? NumberFormat('#,##0.00', 'pt_BR').format(value) : '';
  }

  static String formatValueDecimalThreeDec(double? value) {
    return value != null ? NumberFormat('#,##0.000', 'pt_BR').format(value) : '';
  }

  static String formatValueDecimalNotSeparator(double? value) {
    return value != null ? NumberFormat('#,##0', 'pt_BR').format(value) : '';
  }

  static String phoneNumber(int phoneNumber) {
    String number = phoneNumber.toString().padLeft(11, '0');
    String formatted = '(${number.substring(0, 2)}) ${number.substring(2, 7)}-${number.substring(7, 11)}';

    return formatted;
  }
}
