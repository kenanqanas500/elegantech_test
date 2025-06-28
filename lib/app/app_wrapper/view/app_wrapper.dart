import 'package:flutter_application_1/app/features/login/view/login.dart';
import 'package:flutter_application_1/app/features/products/view/products_view.dart';
import 'package:flutter_application_1/core/extensions/theme_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/app_wrapper_cubit.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});
  static const routeName = 'appWrapper';

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  void initState() {
    context.read<AppWrapperCubit>().getAuthorisedUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //? for force dark, light mode
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    //? for force portrait up orientation
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocBuilder<AppWrapperCubit, AppWrapperState>(builder: (context, state) {
      if (state is AuthorizedUser) {
        // return HomeWrapper(selectedIndex: 0);
        return ProductsView();
      } else {
        return LoginView();
      }
    });
  }
}
