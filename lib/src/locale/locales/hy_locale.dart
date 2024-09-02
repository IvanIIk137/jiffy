import '../../enums/start_of_week.dart';
import '../../utils/replace.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class HyLocale extends Locale {
  @override
  String code() => 'hy';

  @override
  List<String> ordinals() =>
      List.from(['ին', 'րդ', 'րդ', 'րդ'], growable: false); // Армянский язык также использует специфичные суффиксы

  @override
  StartOfWeek startOfWeek() => StartOfWeek.monday;

  @override
  RelativeDateTime relativeDateTime() => HyRelativeTime();
}

class HyRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'առաջ';
  @override
  String suffixFromNow() => 'անց';
  @override
  String lessThanOneMinute(int seconds) => 'մի քանի վայրկյան';
  @override
  String aboutAMinute(int minutes) => 'մեկ րոպե';
  @override
  String minutes(int minutes) => '$minutes րոպե';
  @override
  String aboutAnHour(int minutes) => 'մեկ ժամ';
  @override
  String hours(int hours) => '$hours ժամ';
  @override
  String aDay(int hours) => 'մեկ օր';
  @override
  String days(int days) => '$days օր';
  @override
  String aboutAMonth(int days) => 'մեկ ամիս';
  @override
  String months(int months) => '$months ամիս';
  @override
  String aboutAYear(int year) => 'մեկ տարի';
  @override
  String years(int years) => '$years տարի';
  @override
  String wordSeparator() => ' ';
}
