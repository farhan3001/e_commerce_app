import 'dart:ui';
import 'package:intl/intl.dart';

class FFormatter {

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: const Locale("id", "ID").toString(), symbol: "Rp").format((amount));
  }

  // static String formatPhoneNumber(String phoneNumber) {
  //   if (phoneNumber.length == 10) {
  //     return '(${phoneNumber.substring(0,3)})'
  //   }
  // }
}