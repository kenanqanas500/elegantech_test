import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/global/app_texts/app_texts.dart';
import 'package:flutter_application_1/core/localization/app_localizations.dart';
// import '../localization/app_localizations.dart';

extension contextX on BuildContext {
  AppLocalizations get localizations {
    return Localizations.of<AppLocalizations>(this, AppLocalizations)!;
  }

  String translate(String key) {
    final loc = localizations;

    final translator = _dictionary[key];

    if (translator != null) {
      return translator(loc);
    } else {
      return key;
    }
  }

  static final Map<String, String Function(AppLocalizations)> _dictionary = {
    // T.welcomeText: (loc) => loc.welcomeText,
    // T.iRest: (loc) => loc.iRest,
    T.login: (loc) => loc.login,
    T.loginButton: (loc) => loc.loginButton,
    T.pleaseEnterPhoneAndPass: (loc) => loc.pleaseEnterPhoneAndPass,
    // T.changeServerIp: (loc) => loc.changeServerIp,
    // T.setupConnection: (loc) => loc.setupConnection,
    // T.enterServerNumber: (loc) => loc.enterServerNumber,
    // T.serverNumber: (loc) => loc.serverNumber,
    // T.continueText: (loc) => loc.continueText,
    T.cancel: (loc) => loc.cancel,
    // T.dataSyncedDone: (loc) => loc.dataSyncedDone,
    // T.confirm: (loc) => loc.confirm,
    // T.tables: (loc) => loc.tables,
    // T.receipts: (loc) => loc.receipts,
    // T.groups: (loc) => loc.groups,
    // T.hallsAndTabels: (loc) => loc.hallsAndTabels,
    // T.theReceipt: (loc) => loc.theReceipt,
    // T.groupsAndFood: (loc) => loc.groupsAndFood,
    // T.newOrder: (loc) => loc.newOrder,
    // T.request: (loc) => loc.request,
    // T.print: (loc) => loc.print,
    // T.enterTableId: (loc) => loc.enterTableId,
    // T.enterHallId: (loc) => loc.enterHallId,
    // T.enteerHallIdToShowTables: (loc) => loc.enteerHallIdToShowTables,
    // T.changedSuccessfully: (loc) => loc.changedSuccessfully,
    // T.addServerIp: (loc) => loc.addServerIp,
    // T.noHalls: (loc) => loc.noHalls,
    // T.noTables: (loc) => loc.noTables,
    // T.noCategories: (loc) => loc.noCategories,
    // T.noFood: (loc) => loc.noFood,
    // T.noNotes: (loc) => loc.noNotes,
    // T.reserved: (loc) => loc.reserved,
    // T.receiptNumber: (loc) => loc.receiptNumber,
    // T.invoiceIsPending: (loc) => loc.invoiceIsPending,
    // T.invoiceIsRequested: (loc) => loc.invoiceIsRequested,
    // T.invoiceIsPreparing: (loc) => loc.invoiceIsPreparing,
    // T.invoiceIsDone: (loc) => loc.invoiceIsDone,
    // T.invoiceIsPaid: (loc) => loc.invoiceIsPaid,
    // T.table: (loc) => loc.table,
    // T.captain: (loc) => loc.captain,
    // T.deleteInvoice: (loc) => loc.deleteInvoice,
    // T.receiptTableName: (loc) => loc.receiptTableName,
    // T.theMaterialOrder: (loc) => loc.theMaterialOrder,
    // T.thePrice: (loc) => loc.thePrice,
    // T.theAmount: (loc) => loc.theAmount,
    // T.theProcess: (loc) => loc.theProcess,
    // T.totalPrice: (loc) => loc.totalPrice,
    // T.theNumber: (loc) => loc.theNumber,
    // T.peicePrice: (loc) => loc.peicePrice,
    // T.receipt: (loc) => loc.receipt,
    // T.chooseHall: (loc) => loc.chooseHall,
    // T.theHall: (loc) => loc.theHall,
    // T.noReceipts: (loc) => loc.noReceipts,
    // T.itemAddedSuccessully: (loc) => loc.itemAddedSuccessully,
    // T.itemDeletedSuccessfully: (loc) => loc.itemDeletedSuccessfully,
    // T.tableIsReservedSsuccessfully: (loc) => loc.tableIsReservedSsuccessfully,
    // T.totalPriceAfterDiscount: (loc) => loc.totalPriceAfterDiscount,
    // T.pleaseMakeSureIpIsCorrect: (loc) => loc.pleaseMakeSureIpIsCorrect,
    // T.connectionE: (loc) => loc.connectionE,
    // T.internetE: (loc) => loc.internetE,
    // T.serverE: (loc) => loc.serverE,
    // T.receiptPrintedE: (loc) => loc.receiptPrintedE,
    // T.orderPrinted: (loc) => loc.orderPrinted,
    // T.deviceIsTablet: (loc) => loc.deviceIsTablet,
    // // T.emailV: (loc) => loc.emailV,
    // T.userNameV: (loc) => loc.userNameV,
    T.passwordV: (loc) => loc.passwordV,
    T.phoneNumberV: (loc) => loc.phoneNumberV,
    // T.serverIpV: (loc) => loc.serverIpV,
    // T.serverIpV2: (loc) => loc.serverIpV2,
    // // T.emailH: (loc) => loc.emailH,
    // T.userNameH: (loc) => loc.userNameH,
    T.passwordH: (loc) => loc.passwordH,
    T.phoneNumberH: (loc) => loc.phoneNumberH,
    // T.note: (loc) => loc.note,
    // T.orderTitle: (loc) => loc.orderTitle,
    // T.canNotDeleteOrder: (loc) => loc.canNotDeleteOrder,
    // T.canNotDeleteFood: (loc) => loc.canNotDeleteFood,
    // T.canNotAddOrder: (loc) => loc.canNotAddOrder,
    // T.orderIsPrinted: (loc) => loc.orderIsPrinted,
    // T.forbiddenDevice: (loc) => loc.forbiddenDevice,
    // T.paid: (loc) => loc.paid,
    // T.unPaid: (loc) => loc.unPaid,
    // T.searchCustomer: (loc) => loc.searchCustomer,
    // T.chooseCustomer: (loc) => loc.chooseCustomer,
    // T.allOrdersPrinted: (loc) => loc.allOrdersPrinted,
    // T.choosedCustomer: (loc) => loc.choosedCustomer,
    // T.emptySearch: (loc) => loc.emptySearch,
    // T.finishAndLeave: (loc) => loc.finishAndLeave,
    // T.tableWillBeUnbooked: (loc) => loc.tableWillBeUnbooked,
  };
}
