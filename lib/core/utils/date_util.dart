import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

DateTime responseDateFormat(String incomingServerDate) {
  return DateTime.parse(incomingServerDate.trim()).toLocal();
}

// DateTime responseDateFormat(String incomingServerDate) {
//   initializeDateFormatting();
//   var dateTime = DateFormat("yyyy-MM-dd hh:mm").parse(incomingServerDate, true);
//   // DateFormat("yyyy-MM-dd HH:mm:ss").parse(incomingServerDate, true);
//   var dateLocal = dateTime.toLocal();
//   return dateLocal;
// }

// String responseDateFormatTimeZone(String incomingServerDate) {
//   log("incoming => $incomingServerDate");
//   // Parse the incoming server date string
//   var dateTime = DateTime.parse(incomingServerDate).toLocal();
//   log("incoming as date time => $dateTime");

//   // Format the DateTime object to display in the desired format
//   var formattedDate = DateFormat("dd-MM-yyyy HH:mm").format(dateTime);

//   log("local => $formattedDate");

//   return formattedDate;
// }

String differenceAsSqlTime(DateTime start, DateTime end) {
  final diff = end.difference(start).abs();

  final hours = diff.inHours.remainder(24);
  final minutes = diff.inMinutes.remainder(60);
  final seconds = diff.inSeconds.remainder(60);
  final micro = diff.inMicroseconds.remainder(1000000);

  final fraction7 = (micro * 10).toString().padLeft(7, '0');

  return '${hours.toString().padLeft(2, '0')}:'
      '${minutes.toString().padLeft(2, '0')}:'
      '${seconds.toString().padLeft(2, '0')}.'
      '$fraction7';
}

String responseDateFormatTimeZone(String incomingServerDate, {String pattern = "dd-MM-yyyy hh:mm a"}) {
  // log("incoming => $incomingServerDate");
  // Parse the incoming server date string
  var dateTime = DateTime.parse(incomingServerDate);

  // Format the DateTime object to display in the desired format
  var formattedDate = DateFormat(pattern).format(dateTime.toLocal());
  // var formattedDate = DateFormat("yyyy-MM-dd HH:mm").format(dateTime.toUtc());
  // log("local => $formattedDate");

  return formattedDate;
}

DateTime responseDateDashedFormat(String incomingServerDate) {
  initializeDateFormatting();
  var dateTime = DateFormat("yyyy-MM-dd").parse(incomingServerDate, true);
  // DateFormat("yyyy-MM-dd HH:mm:ss").parse(incomingServerDate, true);
  var dateLocal = dateTime.toLocal();
  return dateLocal;
}

String getCurrentDatePlusSevenDays() {
  // Get the current date
  DateTime currentDate = DateTime.now();

  // Add 7 days to the current date
  DateTime futureDate = currentDate.add(Duration(days: 07));

  // Format the future date as a string
  String formattedDate =
      '${futureDate.year}-${futureDate.month.toString().padLeft(2, '0')}-${futureDate.day.toString().padLeft(2, '0')}';

  return formattedDate;
}

DateTime getCurrentDatePlusSevenDaysAsDate() {
  // Get the current date
  DateTime currentDate = DateTime.now();

  // Add 7 days to the current date
  DateTime futureDate = currentDate.add(Duration(days: 7));

  return futureDate;
}

String responseDateAsString(String incomingServerDate,
    {String pattern = "yyyy-MM-dd hh:mm:ss", String locale = "en"}) {
  initializeDateFormatting();
  var localTime = DateFormat("yyyy-MM-dd hh:mm", "en").parse(incomingServerDate, true).toLocal();
  var formattedDate = DateFormat(pattern, locale).format(localTime);
  return formattedDate;
}

String requestDateFormat(DateTime date) {
  initializeDateFormatting();
  var utcDate = date.toUtc();
  var formattedDate = DateFormat('yyyy-MM-dd').format(utcDate);
  return formattedDate;
}

//for sending date without hours and minutes
String requestDateFormatWithoutUtc(DateTime date) {
  initializeDateFormatting();
  var formattedDate = DateFormat('yyyy-MM-dd').format(date);
  return formattedDate;
}

// Define a function that takes a UTC date and time string as input
// and returns a local date and time string as output
String convertUTCToLocal(String utcString, String pattern) {
  // Parse the input string as a UTC DateTime object
  DateTime utcDate = DateTime.parse(utcString).toUtc();

// Convert the UTC DateTime object to a local DateTime object
  DateTime localDate = utcDate.toLocal();

// Format the local DateTime object as a string
// You can customize the format according to your preference
  // String localString = DateFormat('EEEE d MMMM yyyy - hh:mm a').format(localDate);
  String localString = DateFormat(pattern).format(localDate);

// Return the local date and time string
  return localString;
}

// this method returned the index of the month
String getMonthIndex(String monthName) {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  if (months.indexOf(monthName) + 1 > 9) {
    return months.indexOf(monthName).toString();
  } else {
    return "0${months.indexOf(monthName) + 1}";
  }
}

DateTime convert12To24(String dateTime12) {
  var dateFormat = DateFormat("yyyy-MM-dd hh:mm:ss a");
  var dateTime = dateFormat.parse(dateTime12);
  return dateTime;
  // print(requestDateFormat(dateTime));
  //print 2024-03-12 10:00:34 as this func convert to utc and format
  //without convert to utc output will be 2024-03-12 13:00:34
}

DateTime customResponseDateFormat(String incomingServerDate) {
  initializeDateFormatting();
  var dateTime = DateFormat("dd MMMM yyyy hh:mm a").parse(incomingServerDate, true);
  var dateLocal = dateTime.toLocal();
  return dateLocal;
}

String getCurrentFormattedDate() {
  // Get the current date
  DateTime currentDate = DateTime.now();

  // Format the date with day, month, and year separated by '/'
  String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);

  return formattedDate;
}

String numberOfDays(DateTime firstDate, DateTime endDate) {
  String daysDifference = endDate.difference(firstDate).inDays.toString();
  return daysDifference;
}

bool isFirstDateBigger(DateTime firstDate, DateTime secondDate) {
  return firstDate.isAfter(secondDate);
}

DateTime handleResponseDate(String dateString) {
  final parsedDate = DateTime.parse(dateString);

  return parsedDate;
}

String timeFromDate(DateTime date) {
  initializeDateFormatting();
  final timeFormatted = DateFormat('hh:mm a');
  return timeFormatted.format(date.toLocal());
}

String formateDate(DateTime date) {
  initializeDateFormatting();
  DateFormat dateFormatted = DateFormat('dd-MM-yyyy');
  return dateFormatted.format(date.toLocal());
}
