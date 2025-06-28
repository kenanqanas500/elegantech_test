import 'package:flutter_application_1/core/localization/app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeText => 'Welcome to the App';

  @override
  String get iRest => 'I Rest';

  @override
  String get login => 'Login';

  @override
  String get loginButton => 'Login';

  @override
  String get pleaseEnterPhoneAndPass => 'Please enter your phone number and password';

  @override
  String get changeServerIp => 'Change Server IP';

  @override
  String get setupConnection => 'Setting up server connection';

  @override
  String get enterServerNumber => 'Enter your restaurant\'s server number';

  @override
  String get serverNumber => 'Server number';

  @override
  String get continueText => 'Continue';

  @override
  String get cancel => 'Cancel';

  @override
  String get dataSyncedDone => 'Data synced successfully';

  @override
  String get confirm => 'Confirm';

  @override
  String get tables => 'Halls';

  @override
  String get receipts => 'Receipts';

  @override
  String get groups => 'Groups';

  @override
  String get hallsAndTabels => 'Halls and Tables';

  @override
  String get theReceipt => 'The Receipt';

  @override
  String get groupsAndFood => 'Groups and Food';

  @override
  String get request => 'Request Bill';

  @override
  String get print => 'Print';

  @override
  String get enterTableId => 'Please select a table first to view the meals';

  @override
  String get enterHallId => 'Select Hall';

  @override
  String get enteerHallIdToShowTables => 'Please select a specific hall to view its tables';

  @override
  String get changedSuccessfully => 'Server IP changed successfully';

  @override
  String get addServerIp => 'Please enter the server IP first';

  @override
  String get noHalls => 'No halls to display currently';

  @override
  String get noTables => 'No tables in the selected hall';

  @override
  String get noCategories => 'No food categories available';

  @override
  String get noFood => 'No food items for the selected category';

  @override
  String get noNotes => 'No additions available';

  @override
  String get reserved => 'Reserved';

  @override
  String get receiptNumber => 'Receipt No.';

  @override
  String get orderIsPending => 'Sent to Kitchen';

  @override
  String get orderIsRequested => 'Bill requested, remaining';

  @override
  String get orderIsPreparing => 'Order is being prepared';

  @override
  String get orderIsDone => 'Order is ready';

  @override
  String get orderIsPaid => 'Bill fully paid';

  @override
  String get table => 'Table';

  @override
  String get captain => 'Captain';

  @override
  String get deleteInvoice => 'Delete Invoice';

  @override
  String get receiptTableName => '/ Table No.';

  @override
  String get theMaterialOrder => 'Item';

  @override
  String get thePrice => 'Price';

  @override
  String get theAmount => 'Amount';

  @override
  String get theProcess => 'Action';

  @override
  String get totalPrice => 'Total Price';

  @override
  String get theNumber => 'Quantity';

  @override
  String get peicePrice => 'Unit Price';

  @override
  String get receipt => 'Receipt';

  @override
  String get chooseHall => 'Choose Hall';

  @override
  String get theHall => 'Hall';

  @override
  String get noReceipts => 'No receipts currently available for you';

  @override
  String get itemAddedSuccessully => 'Item successfully added to receipt';

  @override
  String get itemDeletedSuccessfully => 'Item successfully deleted from receipt';

  @override
  String get tableIsReservedSsuccessfully => 'Table reserved successfully';

  @override
  String get totalPriceAfterDiscount => 'Total after discount:';

  @override
  String get pleaseMakeSureIpIsCorrect =>
      'Please make sure the IP is correct, or the server might be offline. Try again later.';

  @override
  String get connectionE => 'Connection timeout. Please check your internet connection and try again.';

  @override
  String get internetE => 'Check your internet connection and try again.';

  @override
  String get serverE => 'A server error occurred. Please try again later.';

  @override
  String get receiptPrintedE => 'Failed to print the receipt';

  @override
  String get recieptPrinted => 'Invoice printed successfully';

  @override
  String get deviceIsTablet => 'This app is not designed for tablets';

  @override
  String get userNameV => 'Please enter your username';

  @override
  String get passwordV => 'Please enter your password';

  @override
  String get phoneNumberV => 'Please enter your phone number';

  @override
  String get serverIpV => 'Please enter the server IP';

  @override
  String get serverIpV2 => 'Please enter a valid IP address';

  @override
  String get userNameH => 'Username';

  @override
  String get passwordH => 'Password';

  @override
  String get phoneNumberH => 'Phone Number';

  @override
  String get note => 'Note';

  @override
  String get orderTitle => 'Order No. ';

  @override
  String get canNotDeleteOrder =>
      'Can not delete order because it has one left,if you need delete the invoice';

  @override
  String get canNotDeleteFood =>
      'Can not delete item because it is the one left at the order,if you need delete it\'s order';

  @override
  String get canNotAddOrder => 'You should print the order before adding any else order';

  @override
  String get orderIsPrinted => 'Order is printed';
}
