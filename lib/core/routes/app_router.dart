import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_wrapper/view/app_wrapper.dart';
import 'package:flutter_application_1/app/features/login/view/login.dart';
import 'package:flutter_application_1/app/features/products/view/products_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //! auth
      case AppWrapper.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: AppWrapper.routeName), builder: (_) => const AppWrapper());
      case LoginView.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: LoginView.routeName), builder: (_) => LoginView());
      case ProductsView.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: ProductsView.routeName), builder: (_) => ProductsView());

      default:
        return MaterialPageRoute(
            settings: RouteSettings(name: LoginView.routeName), builder: (_) => LoginView());
    }
  }

  static PageRouteBuilder _animatedRoute(Widget child) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400), // Smooth transition speed
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from the right
        const end = Offset.zero; // End at the center
        const curve = Curves.easeInOut; // Smooth transition

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
