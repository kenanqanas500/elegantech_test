import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/login/cubit/login_cubit.dart';
import 'package:flutter_application_1/app/features/products/view/products_view.dart';
import 'package:flutter_application_1/app/global/loading_dialogue.dart';
import 'package:flutter_application_1/app/global/show_error_dialogue.dart';
import 'package:flutter_application_1/app/middle_ware_ui/buttons/custom_button.dart';
import 'package:flutter_application_1/app/middle_ware_ui/text_form_field/custom_text_form_field.dart';
import 'package:flutter_application_1/app/middle_ware_ui/texts/custom_text.dart';
import 'package:flutter_application_1/core/enums/button_type.dart';
import 'package:flutter_application_1/core/enums/text_form_field_type.dart';
import 'package:flutter_application_1/core/enums/text_type.dart';
import 'package:flutter_application_1/core/extensions/routing_ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const String routeName = 'login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _phoneCTRL = TextEditingController();

  final TextEditingController _passwordCTRL = TextEditingController();

  // final GlobalKey<FormState>() _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneCTRL.dispose();
    _passwordCTRL.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 60.sp, right: 24.sp, left: 24.sp),
        child: FadeInRight(
          child: CustomButton(
              type: ButtonType.login,
              onPressed: () {
                validateFields(context: context);
              }),
        ),
      ),
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            loadingDialogue(context);
          } else if (state is LoginLoaded) {
            context.pop();
            context.goUntil(ProductsView.routeName);
          } else if (state is LoginError) {
            context.pop();
            showErrorDialogue(context: context, message: state.error);
          }
        },
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 24.sp, right: 24.sp, bottom: 24.sp),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    CustomText(
                      type: TextType.login,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      type: TextType.pleaseEnterPhoneAndPass,
                    ),
                    SizedBox(height: 30.h),
                    CustomTextFormField(type: TextFormFieldType.phoneNumber, controller: _phoneCTRL),
                    // CustomTextFormField(
                    //   type: TextFormFieldType.phoneNumber,
                    //   controller: _phoneCTRL,
                    // ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      type: TextFormFieldType.password,
                      controller: _passwordCTRL,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateFields({required BuildContext context}) {
    // context.go(ChangeIpView.routeName);
    if (_formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(phoneNumber: _phoneCTRL.text, password: _passwordCTRL.text);
      // context.goUntil(HomeWrapper.routeName, arguments: 0);
    }
  }
}
