import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/l10n/app_localizations_ar.dart';
import 'package:flutter_application_1/l10n/app_localizations_en.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ar'), Locale('en')];

  /// No description provided for @welcomeText.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the App'**
  String get welcomeText;

  /// No description provided for @iRest.
  ///
  /// In en, this message translates to:
  /// **'I Rest'**
  String get iRest;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @pleaseEnterPhoneAndPass.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number and password'**
  String get pleaseEnterPhoneAndPass;

  /// No description provided for @changeServerIp.
  ///
  /// In en, this message translates to:
  /// **'Change Server IP'**
  String get changeServerIp;

  /// No description provided for @setupConnection.
  ///
  /// In en, this message translates to:
  /// **'Setting up server connection'**
  String get setupConnection;

  /// No description provided for @enterServerNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your restaurant\'s server number'**
  String get enterServerNumber;

  /// No description provided for @serverNumber.
  ///
  /// In en, this message translates to:
  /// **'Server number'**
  String get serverNumber;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @dataSyncedDone.
  ///
  /// In en, this message translates to:
  /// **'Data synced successfully'**
  String get dataSyncedDone;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @tables.
  ///
  /// In en, this message translates to:
  /// **'Halls'**
  String get tables;

  /// No description provided for @receipts.
  ///
  /// In en, this message translates to:
  /// **'Receipts'**
  String get receipts;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @hallsAndTabels.
  ///
  /// In en, this message translates to:
  /// **'Halls and Tables'**
  String get hallsAndTabels;

  /// No description provided for @theReceipt.
  ///
  /// In en, this message translates to:
  /// **'The Receipt'**
  String get theReceipt;

  /// No description provided for @groupsAndFood.
  ///
  /// In en, this message translates to:
  /// **'Groups and Food'**
  String get groupsAndFood;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request Bill'**
  String get request;

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @enterTableId.
  ///
  /// In en, this message translates to:
  /// **'Please select a table first to view the meals'**
  String get enterTableId;

  /// No description provided for @enterHallId.
  ///
  /// In en, this message translates to:
  /// **'Select Hall'**
  String get enterHallId;

  /// No description provided for @enteerHallIdToShowTables.
  ///
  /// In en, this message translates to:
  /// **'Please select a specific hall to view its tables'**
  String get enteerHallIdToShowTables;

  /// No description provided for @changedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Server IP changed successfully'**
  String get changedSuccessfully;

  /// No description provided for @addServerIp.
  ///
  /// In en, this message translates to:
  /// **'Please enter the server IP first'**
  String get addServerIp;

  /// No description provided for @noHalls.
  ///
  /// In en, this message translates to:
  /// **'No halls to display currently'**
  String get noHalls;

  /// No description provided for @noTables.
  ///
  /// In en, this message translates to:
  /// **'No tables in the selected hall'**
  String get noTables;

  /// No description provided for @noCategories.
  ///
  /// In en, this message translates to:
  /// **'No food categories available'**
  String get noCategories;

  /// No description provided for @noFood.
  ///
  /// In en, this message translates to:
  /// **'No food items for the selected category'**
  String get noFood;

  /// No description provided for @noNotes.
  ///
  /// In en, this message translates to:
  /// **'No additions available'**
  String get noNotes;

  /// No description provided for @reserved.
  ///
  /// In en, this message translates to:
  /// **'Reserved'**
  String get reserved;

  /// No description provided for @receiptNumber.
  ///
  /// In en, this message translates to:
  /// **'Receipt No.'**
  String get receiptNumber;

  /// No description provided for @orderIsPending.
  ///
  /// In en, this message translates to:
  /// **'Sent to Kitchen'**
  String get orderIsPending;

  /// No description provided for @orderIsRequested.
  ///
  /// In en, this message translates to:
  /// **'Bill requested, remaining'**
  String get orderIsRequested;

  /// No description provided for @orderIsPreparing.
  ///
  /// In en, this message translates to:
  /// **'Order is being prepared'**
  String get orderIsPreparing;

  /// No description provided for @orderIsDone.
  ///
  /// In en, this message translates to:
  /// **'Order is ready'**
  String get orderIsDone;

  /// No description provided for @orderIsPaid.
  ///
  /// In en, this message translates to:
  /// **'Bill fully paid'**
  String get orderIsPaid;

  /// No description provided for @table.
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get table;

  /// No description provided for @captain.
  ///
  /// In en, this message translates to:
  /// **'Captain'**
  String get captain;

  /// No description provided for @deleteInvoice.
  ///
  /// In en, this message translates to:
  /// **'Delete Invoice'**
  String get deleteInvoice;

  /// No description provided for @receiptTableName.
  ///
  /// In en, this message translates to:
  /// **'/ Table No.'**
  String get receiptTableName;

  /// No description provided for @theMaterialOrder.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get theMaterialOrder;

  /// No description provided for @thePrice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get thePrice;

  /// No description provided for @theAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get theAmount;

  /// No description provided for @theProcess.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get theProcess;

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get totalPrice;

  /// No description provided for @theNumber.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get theNumber;

  /// No description provided for @peicePrice.
  ///
  /// In en, this message translates to:
  /// **'Unit Price'**
  String get peicePrice;

  /// No description provided for @receipt.
  ///
  /// In en, this message translates to:
  /// **'Receipt'**
  String get receipt;

  /// No description provided for @chooseHall.
  ///
  /// In en, this message translates to:
  /// **'Choose Hall'**
  String get chooseHall;

  /// No description provided for @theHall.
  ///
  /// In en, this message translates to:
  /// **'Hall'**
  String get theHall;

  /// No description provided for @noReceipts.
  ///
  /// In en, this message translates to:
  /// **'No receipts currently available for you'**
  String get noReceipts;

  /// No description provided for @itemAddedSuccessully.
  ///
  /// In en, this message translates to:
  /// **'Item successfully added to receipt'**
  String get itemAddedSuccessully;

  /// No description provided for @itemDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Item successfully deleted from receipt'**
  String get itemDeletedSuccessfully;

  /// No description provided for @tableIsReservedSsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Table reserved successfully'**
  String get tableIsReservedSsuccessfully;

  /// No description provided for @totalPriceAfterDiscount.
  ///
  /// In en, this message translates to:
  /// **'Total after discount:'**
  String get totalPriceAfterDiscount;

  /// No description provided for @pleaseMakeSureIpIsCorrect.
  ///
  /// In en, this message translates to:
  /// **'Please make sure the IP is correct, or the server might be offline. Try again later.'**
  String get pleaseMakeSureIpIsCorrect;

  /// No description provided for @connectionE.
  ///
  /// In en, this message translates to:
  /// **'Connection timeout. Please check your internet connection and try again.'**
  String get connectionE;

  /// No description provided for @internetE.
  ///
  /// In en, this message translates to:
  /// **'Check your internet connection and try again.'**
  String get internetE;

  /// No description provided for @serverE.
  ///
  /// In en, this message translates to:
  /// **'A server error occurred. Please try again later.'**
  String get serverE;

  /// No description provided for @receiptPrintedE.
  ///
  /// In en, this message translates to:
  /// **'Failed to print the receipt'**
  String get receiptPrintedE;

  /// No description provided for @recieptPrinted.
  ///
  /// In en, this message translates to:
  /// **'Invoice printed successfully'**
  String get recieptPrinted;

  /// No description provided for @deviceIsTablet.
  ///
  /// In en, this message translates to:
  /// **'This app is not designed for tablets'**
  String get deviceIsTablet;

  /// No description provided for @userNameV.
  ///
  /// In en, this message translates to:
  /// **'Please enter your username'**
  String get userNameV;

  /// No description provided for @passwordV.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get passwordV;

  /// No description provided for @phoneNumberV.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get phoneNumberV;

  /// No description provided for @serverIpV.
  ///
  /// In en, this message translates to:
  /// **'Please enter the server IP'**
  String get serverIpV;

  /// No description provided for @serverIpV2.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid IP address'**
  String get serverIpV2;

  /// No description provided for @userNameH.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get userNameH;

  /// No description provided for @passwordH.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordH;

  /// No description provided for @phoneNumberH.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberH;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @orderTitle.
  ///
  /// In en, this message translates to:
  /// **'Order No. '**
  String get orderTitle;

  /// No description provided for @canNotDeleteOrder.
  ///
  /// In en, this message translates to:
  /// **'Can not delete order because it has one left,if you need delete the invoice'**
  String get canNotDeleteOrder;

  /// No description provided for @canNotDeleteFood.
  ///
  /// In en, this message translates to:
  /// **'Can not delete item because it is the one left at the order,if you need delete it\'s order'**
  String get canNotDeleteFood;

  /// No description provided for @canNotAddOrder.
  ///
  /// In en, this message translates to:
  /// **'You should print the order before adding any else order'**
  String get canNotAddOrder;

  /// No description provided for @orderIsPrinted.
  ///
  /// In en, this message translates to:
  /// **'Order is printed'**
  String get orderIsPrinted;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError('AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
