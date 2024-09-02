import '../../enums/start_of_week.dart';
import '../../utils/replace.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class KkLocale extends Locale {
  @override
  String code() => 'kk';

  @override
  List<String> ordinals() =>
      List.from(['ші', 'ші', 'ші', 'ші'], growable: false); // Казахский язык не использует обычные суффиксы для порядковых чисел

  @override
  StartOfWeek startOfWeek() => StartOfWeek.monday;

  @override
  RelativeDateTime relativeDateTime() => KkRelativeTime();
}

class KkRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'бұрын';
  @override
  String suffixFromNow() => 'кейін';
  @override
  String lessThanOneMinute(int seconds) => 'бірнеше секунд';
  @override
  String aboutAMinute(int minutes) => 'бір минут';
  @override
  String minutes(int minutes) => '$minutes минут';
  @override
  String aboutAnHour(int minutes) => 'бір сағат';
  @override
  String hours(int hours) => '$hours сағат';
  @override
  String aDay(int hours) => 'бір күн';
  @override
  String days(int days) => '$days күн';
  @override
  String aboutAMonth(int days) => 'бір ай';
  @override
  String months(int months) => '$months ай';
  @override
  String aboutAYear(int year) => 'бір жыл';
  @override
  String years(int years) => '$years жыл';
  @override
  String wordSeparator() => ' ';
}
