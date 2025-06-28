import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/global/app_texts/app_texts.dart';
import 'package:flutter_application_1/app/middle_ware_ui/texts/general_text.dart';
import 'package:flutter_application_1/core/colors/app_colors.dart';
import 'package:flutter_application_1/core/enums/text_type.dart';
import 'package:flutter_application_1/core/extensions/theme_ext.dart';
import 'package:flutter_application_1/core/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.type,
    this.word = "",
  });
  final TextType type;
  final bool isApiText = false;
  final String word;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      // case TextType.wellcomeIn:
      //   return WellcomeIn();
      // case TextType.iRestaurant:
      //   return IRestaurant();
      case TextType.login:
        return Login();
      case TextType.loginButton:
        return LoginButton();
      case TextType.pleaseEnterPhoneAndPass:
        return PleaseEnterPhoneAndPass();
      // case TextType.changeServerIp:
      //   return ChangeServerIp();
      // case TextType.continuE:
      //   return Continue();
      case TextType.cancel:
        return Cancel();
      // case TextType.dataSyncedDone:
      //   return DataSyncedDone();
      // case TextType.hallsAndTabels:
      //   return HallsAndTabels();
      // case TextType.confirm:
      //   return Confirm();
      // case TextType.receipts:
      //   return Receipts();
      // case TextType.groups:
      //   return GroupsAndFood();
      // case TextType.setupConnection:
      //   return SetupConnection();
      // case TextType.enterServerNumber:
      //   return EnterServerNumber();
      // case TextType.request:
      //   return Request();
      // case TextType.print:
      //   return Print();
      // case TextType.enterTableId:
      //   return EnterTableId();
      // case TextType.enterHallId:
      //   return EnterHallId();
      // case TextType.noHalls:
      //   return NoHalls();
      // case TextType.noReceipts:
      //   return NoReceipts();
      // case TextType.noFood:
      //   return NoFood();
      // case TextType.noNotes:
      //   return NoNotes();
      // case TextType.noTables:
      //   return NoTables();
      // case TextType.noCategories:
      //   return NoCategories();
      // case TextType.enterHallIdToShateTables:
      //   return EnterHallIdToShowTables();
      // case TextType.theReceiptsTitle:
      //   return TheReceiptsTitle();
      // case TextType.receiptNumber:
      //   return ReceiptNumber();
      // case TextType.invoiceIsRequested:
      //   return OrderIsRequested(word: word);
      // case TextType.invoiceIsDone:
      //   return OrderIsDone();
      // case TextType.invoiceIsPreparing:
      //   return OrderIsPreparing();
      // case TextType.invoiceIsPending:
      //   return OrderIsPending();
      // case TextType.invoiceIsPaid:
      //   return OrderIsPaid();
      // case TextType.table:
      //   return TableText();
      // case TextType.captainId:
      //   return CaptainIdText();
      // case TextType.receiptTitle:
      //   return ReceiptTitle();
      // case TextType.deleteInvoice:
      //   return DeleteInvoice();
      // case TextType.receiptTableName:
      //   return ReceiptTableName();
      // case TextType.theMaterialOrder:
      //   return TheMaterialOrder();
      // case TextType.thePrice:
      //   return ThePrice();
      // case TextType.theAmount:
      //   return TheAmount();
      // case TextType.theProcess:
      //   return TheProcess();
      // case TextType.totalPrice:
      //   return TotalPrice();
      // case TextType.theNumber:
      //   return TheNumber();
      // case TextType.peicePrice:
      //   return PeicePrice();
      // case TextType.receipt:
      //   return Receipt();
      // case TextType.chooseHall:
      //   return ChooseHall();
      // case TextType.theHall:
      //   return TheHall();
      // case TextType.deviceIsTablet:
      //   return DeviceIsTablet();
      // case TextType.orderTitle:
      //   return OrderTitle();
      // case TextType.invoiceIsPrinted:
      //   return OrderIsPrinted();
      // case TextType.paid:
      //   return Paid(invoiceFitlerType: invoiceFitlerType);
      // case TextType.unPaid:
      //   return UnPaid(invoiceFitlerType: invoiceFitlerType);
      // case TextType.choosedCustomer:
      //   return ChoosedCustomer(customerName: word);
      // case TextType.emptySearch:
      //   return EmptySearch();
      // case TextType.finishAndLeave:
      //   return FinishAndLeave();
      // case TextType.newOrder:
      //   return NewOrder();

      // ! dyanamic texts from api
      // case TextType.receiptNumberApi:
      //   return ReceiptNumberApi(isApiText: isApiText, word: word);
      // case TextType.tableApi:
      //   return TableApi(isApiText: isApiText, word: word);
      // case TextType.formattedInvoiceDateApi:
      //   return FormattedOrderDateApi(isApiText: isApiText, word: word);
      // case TextType.captainIdApi:
      //   return CaptainIdApi(isApiText: isApiText, word: word);
      // case TextType.formattedInvoiceTimeApi:
      //   return CormattedOrderTimeApi(isApiText: isApiText, word: word);
      // case TextType.categoryNameApi:
      //   return CategoryNameApi(isApiText: isApiText, word: word);
      // case TextType.tableHallNameApi:
      //   return TableHallNameApi(isApiText: isApiText, word: word);
      // case TextType.receiptTitleNumberApi:
      //   return ReceiptTitleNumberApi(isApiText: isApiText, word: word);
      // case TextType.tableNameApi:
      //   return TableNameApi(isApiText: isApiText, word: word);
      // case TextType.receiptTableIdApi:
      //   return ReceiptTableIdApi(isApiText: isApiText, word: word);
      // case TextType.receiptOrderTotalApi:
      //   return ReceiptOrderTotalApi(isApiText: isApiText, word: word);
      // case TextType.categoriesListNameApi:
      //   return CategoriesListNameApi(isApiText: isApiText, word: word);
      // case TextType.categoryNameAtBottomApi:
      //   return CategoryNameAtBottomApi(isApiText: isApiText, word: word);
      // case TextType.selectedHallApi:
      //   return SelectedHallApi(isApiText: isApiText, word: word);
      // case TextType.orderNumberApi:
      //   return OrderNumberApi(isApiText: isApiText, word: word);
      // case TextType.orderFoodNameApi:
      //   return OrderFoodNameApi(isApiText: isApiText, word: word);
      // case TextType.orderFoodPriceApi:
      //   return OrderFoodPriceApi(isApiText: isApiText, word: word);
      // case TextType.orderFoodCountApi:
      //   return OrderFoodCountApi(isApiText: isApiText, word: word);
    }
  }
}

class WellcomeIn extends StatelessWidget {
  const WellcomeIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.welcomeText,
      style: context.getTheme.textTheme.titleSmall?.copyWith(color: AppColors.primaryColor),
    );
  }
}

class IRestaurant extends StatelessWidget {
  const IRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.iRest,
      style: context.getTheme.textTheme.titleLarge
          ?.copyWith(color: AppColors.whiteColor, fontFamily: AppConstants.breefSerifFont),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.login,
      style: context.getTheme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.loginButton,
      style: context.getTheme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
    );
  }
}

class PleaseEnterPhoneAndPass extends StatelessWidget {
  const PleaseEnterPhoneAndPass({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.pleaseEnterPhoneAndPass,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.blackColor40,
      ),
    );
  }
}

class ChangeServerIp extends StatelessWidget {
  const ChangeServerIp({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.changeServerIp,
      style: context.getTheme.textTheme.labelMedium?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class Continue extends StatelessWidget {
  const Continue({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.continueText,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class Cancel extends StatelessWidget {
  const Cancel({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.cancel,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class DataSyncedDone extends StatelessWidget {
  const DataSyncedDone({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.dataSyncedDone,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class SetupConnection extends StatelessWidget {
  const SetupConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.setupConnection,
      style: context.getTheme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class EnterServerNumber extends StatelessWidget {
  const EnterServerNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.enterServerNumber,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: Colors.grey,
      ),
    );
  }
}

class HallsAndTabels extends StatelessWidget {
  const HallsAndTabels({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.hallsAndTabels,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
        fontFamily: AppConstants.cairoFont,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.confirm,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class Receipts extends StatelessWidget {
  const Receipts({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.receipts,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
        fontFamily: AppConstants.cairoFont,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class GroupsAndFood extends StatelessWidget {
  const GroupsAndFood({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.groupsAndFood,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
        fontFamily: AppConstants.cairoFont,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.newOrder,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
        fontFamily: AppConstants.cairoFont,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.request,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.blackColor,
      ),
    );
  }
}

class Print extends StatelessWidget {
  const Print({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.print,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class EnterTableId extends StatelessWidget {
  const EnterTableId({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.enterTableId,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class EnterHallId extends StatelessWidget {
  const EnterHallId({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.enterHallId,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class NoHalls extends StatelessWidget {
  const NoHalls({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noHalls,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NoTables extends StatelessWidget {
  const NoTables({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noTables,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NoCategories extends StatelessWidget {
  const NoCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noCategories,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NoReceipts extends StatelessWidget {
  const NoReceipts({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noReceipts,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NoFood extends StatelessWidget {
  const NoFood({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noFood,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class NoNotes extends StatelessWidget {
  const NoNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.noNotes,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class EnterHallIdToShowTables extends StatelessWidget {
  const EnterHallIdToShowTables({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.enteerHallIdToShowTables,
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class TheReceiptsTitle extends StatelessWidget {
  const TheReceiptsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.receipts,
      style: context.getTheme.textTheme.bodyMedium,
    );
  }
}

class ReceiptNumber extends StatelessWidget {
  const ReceiptNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.receiptNumber,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class OrderIsRequested extends StatelessWidget {
  const OrderIsRequested({super.key, required this.word});

  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.invoiceIsRequested + " " + "(${word})",
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class OrderIsPreparing extends StatelessWidget {
  const OrderIsPreparing({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.invoiceIsPreparing,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class OrderIsPending extends StatelessWidget {
  const OrderIsPending({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.invoiceIsPending,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class OrderIsPaid extends StatelessWidget {
  const OrderIsPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.invoiceIsPaid,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.greenColor,
      ),
    );
  }
}

class OrderIsDone extends StatelessWidget {
  const OrderIsDone({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.invoiceIsDone,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class TableText extends StatelessWidget {
  const TableText({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.table,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.successColor,
      ),
    );
  }
}

class CaptainIdText extends StatelessWidget {
  const CaptainIdText({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.captain,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class ReceiptTitle extends StatelessWidget {
  const ReceiptTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.receiptNumber,
      style: context.getTheme.textTheme.bodyMedium,
    );
  }
}

class DeleteInvoice extends StatelessWidget {
  const DeleteInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.deleteInvoice,
      style: context.getTheme.textTheme.displayMedium
          ?.copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.bold),
    );
  }
}

class ReceiptTableName extends StatelessWidget {
  const ReceiptTableName({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.receiptTableName,
      style: context.getTheme.textTheme.bodySmall?.copyWith(
        color: AppColors.lightGreyColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class TheMaterialOrder extends StatelessWidget {
  const TheMaterialOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.theMaterialOrder,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class ThePrice extends StatelessWidget {
  const ThePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.thePrice,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class TheAmount extends StatelessWidget {
  const TheAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.theAmount,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class TheProcess extends StatelessWidget {
  const TheProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.theProcess,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.secondaryColor,
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.totalPrice,
      style: context.getTheme.textTheme.displayMedium?.copyWith(
        color: AppColors.thirdColor,
      ),
    );
  }
}

class TheNumber extends StatelessWidget {
  const TheNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.theNumber,
      style: context.getTheme.textTheme.displayMedium,
    );
  }
}

class PeicePrice extends StatelessWidget {
  const PeicePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.peicePrice,
      style: context.getTheme.textTheme.displayMedium,
    );
  }
}

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
        word: T.receipt,
        style: context.getTheme.textTheme.labelMedium?.copyWith(
          color: AppColors.whiteColor,
        ));
  }
}

class ChooseHall extends StatelessWidget {
  const ChooseHall({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.chooseHall,
      style: context.getTheme.textTheme.displayLarge,
    );
  }
}

class TheHall extends StatelessWidget {
  const TheHall({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: T.theHall, style: context.getTheme.textTheme.displayMedium);
  }
}

class DeviceIsTablet extends StatelessWidget {
  const DeviceIsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: T.deviceIsTablet, style: context.getTheme.textTheme.bodyMedium);
  }
}

class OrderTitle extends StatelessWidget {
  const OrderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
        word: T.orderTitle,
        style: context.getTheme.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.normal,
        ));
  }
}

class OrderIsPrinted extends StatelessWidget {
  const OrderIsPrinted({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
        word: T.orderIsPrinted,
        style: context.getTheme.textTheme.bodySmall?.copyWith(
          color: AppColors.greenColor,
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
        ));
  }
}

// ! dyanmic texts from api
class ReceiptNumberApi extends StatelessWidget {
  const ReceiptNumberApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class TableApi extends StatelessWidget {
  const TableApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.successColor,
      ),
    );
  }
}

class FormattedOrderDateApi extends StatelessWidget {
  const FormattedOrderDateApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.greyColor,
      ),
    );
  }
}

class CormattedOrderTimeApi extends StatelessWidget {
  const CormattedOrderTimeApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.greyColor,
      ),
    );
  }
}

class CategoryNameApi extends StatelessWidget {
  const CategoryNameApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 10.sp,
      ),
    );
  }
}

class TableHallNameApi extends StatelessWidget {
  const TableHallNameApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelMedium?.copyWith(
        color: AppColors.whiteColor,
      ),
    );
  }
}

class CaptainIdApi extends StatelessWidget {
  const CaptainIdApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelSmall?.copyWith(
        fontSize: 12.sp,
        color: AppColors.greyColor,
      ),
    );
  }
}

class ReceiptTitleNumberApi extends StatelessWidget {
  const ReceiptTitleNumberApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.displayMedium,
    );
  }
}

class TableNameApi extends StatelessWidget {
  const TableNameApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.bodySmall?.copyWith(
        color: AppColors.lightGreyColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class ReceiptTableIdApi extends StatelessWidget {
  const ReceiptTableIdApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.bodySmall?.copyWith(
        color: AppColors.lightGreyColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class ReceiptOrderTotalApi extends StatelessWidget {
  const ReceiptOrderTotalApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word + AppConstants.globalPriceUnit,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelMedium?.copyWith(
        color: AppColors.thirdColor,
      ),
    );
  }
}

class CategoriesListNameApi extends StatelessWidget {
  const CategoriesListNameApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.labelMedium,
    );
  }
}

class CategoryNameAtBottomApi extends StatelessWidget {
  const CategoryNameAtBottomApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: word,
      isApiText: isApiText,
      style: context.getTheme.textTheme.displayLarge,
    );
  }
}

class SelectedHallApi extends StatelessWidget {
  const SelectedHallApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: word, isApiText: isApiText, style: context.getTheme.textTheme.displayMedium);
  }
}

class OrderNumberApi extends StatelessWidget {
  const OrderNumberApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: word, isApiText: isApiText, style: context.getTheme.textTheme.displayMedium);
  }
}

class OrderFoodNameApi extends StatelessWidget {
  const OrderFoodNameApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 100.w,
        ),
        child: GeneralText(
          word: word,
          isApiText: isApiText,
          style: context.getTheme.textTheme.displayMedium,
          maxLines: 2,
          overflow: TextOverflow.visible,
        ));
  }
}

class OrderFoodPriceApi extends StatelessWidget {
  const OrderFoodPriceApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(
        word: word + AppConstants.globalPriceUnit,
        isApiText: isApiText,
        style: context.getTheme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold));
  }
}

class OrderFoodCountApi extends StatelessWidget {
  const OrderFoodCountApi({
    super.key,
    required this.isApiText,
    required this.word,
  });

  final bool isApiText;
  final String word;

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: "x" + word, isApiText: isApiText, style: context.getTheme.textTheme.labelMedium);
  }
}

class EmptySearch extends StatelessWidget {
  const EmptySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      word: T.emptySearch,
      style: context.getTheme.textTheme.labelLarge,
    );
  }
}

class FinishAndLeave extends StatelessWidget {
  const FinishAndLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(
      style: context.getTheme.textTheme.titleSmall?.copyWith(
        color: AppColors.whiteColor,
      ),
      word: T.finishAndLeave,
    );
  }
}
