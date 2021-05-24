import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String formatWithPattern(String pattern) {
    try {
      final formatter = DateFormat(pattern);
      return formatter.format(this);
    } on Exception {
      throw const FormatException();
    }
  }

  String localizedTimeShort() {
    final now = DateTime.now();
    final isSameYear = now.year == year;
    final isSameDay = isSameYear && now.month == month && now.day == day;
    final isSameWeek = isSameYear &&
        !isSameDay &&
        now.millisecondsSinceEpoch - millisecondsSinceEpoch <
            1000 * 60 * 60 * 24 * 7;
    if (isSameDay) {
      return formatWithPattern('h:mm a');
    } else if (isSameWeek) {
      return formatWithPattern('EEEE');
    } else if (isSameYear) {
      return formatWithPattern('MMMM d');
    }
    return formatWithPattern('MMM d yyyy');
  }

  String localizedTime() {
    final now = DateTime.now();
    final isSameYear = now.year == year;
    final isSameDay = isSameYear && now.month == month && now.day == day;
    final timeString = formatWithPattern('h:mm a');
    if (isSameDay) return timeString;
    return '${localizedTimeShort()}, $timeString';
  }
}

extension DurationX on Duration {
  String formatted() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return "${twoDigits(inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String formatInMinutes() => '$inMinutes min';
}
