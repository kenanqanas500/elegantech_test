import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_wrapper/cubit/app_wrapper_cubit.dart';
import 'package:flutter_application_1/app/app_wrapper/cubit/authorized_cubit.dart';
import 'package:flutter_application_1/app/app_wrapper/view/app_wrapper.dart';
import 'package:flutter_application_1/app/features/login/cubit/login_cubit.dart';
import 'package:flutter_application_1/app/features/login/repo/login_repo.dart';
import 'package:flutter_application_1/app/features/products/cubit/all_products_cubit.dart';
import 'package:flutter_application_1/app/features/products/repo/products_repo.dart';
import 'package:flutter_application_1/core/database/hive.dart';
import 'package:flutter_application_1/core/helpers/constants.dart';
import 'package:flutter_application_1/core/helpers/dependencies.dart';
import 'package:flutter_application_1/core/helpers/route_observer.dart';
import 'package:flutter_application_1/core/localization/app_localizations.dart';
import 'package:flutter_application_1/core/routes/app_router.dart';
import 'package:flutter_application_1/core/theme/dark/dark_theme.dart';
import 'package:flutter_application_1/core/theme/light/light_theme.dart';
import 'package:flutter_application_1/core/utils/bloc_observer.dart';
import 'package:flutter_application_1/core/utils/hydrated_util.dart';
import 'package:flutter_application_1/language_cubit.dart';
import 'package:flutter_application_1/theme_wrapper/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initalizeLibraries();
  await HydratedUtil.init();
  Dependencies.registerRepos();
  Bloc.observer = AppBlocObserver();
  await HiveDB.singleTon.initializeHive();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => LoginRepo()),
        RepositoryProvider(create: (context) => ProductsRepo()),
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
        BlocProvider(create: (context) => getIt<AuthorizedCubit>()),
        BlocProvider(create: (context) => getIt<AppWrapperCubit>()),
        BlocProvider(create: (context) => getIt<LanguageCubit>()..loadSavedLanguage())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<LoginCubit>()),
          BlocProvider(create: (context) => getIt<AllProductsCubit>()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (ctx, wdgt) => BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              ThemeState theme = context.select((ThemeCubit cubit) => cubit.state);
              final themeMode = theme == ThemeState.dark ? ThemeMode.dark : ThemeMode.light;
              return BlocListener<AuthorizedCubit, AuthorizedState>(
                listener: (context, state) {},
                child: MaterialApp(
                  navigatorKey: MyApp.navigatorKey,
                  title: AppConstants.appName,
                  navigatorObservers: [OBS()],
                  theme: lightTheme,
                  debugShowCheckedModeBanner: false,
                  themeMode: themeMode,
                  darkTheme: darkTheme,
                  onGenerateRoute: AppRouter.generateRoute,
                  onGenerateInitialRoutes: (String initialRouteName) {
                    return [
                      MaterialPageRoute(
                        builder: (_) => const AppWrapper(),
                        settings: const RouteSettings(name: AppWrapper.routeName),
                      ),
                    ];
                  },
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  locale: context.watch<LanguageCubit>().state,
                  localeResolutionCallback: (locale, supportedLocales) {
                    if (supportedLocales.contains(locale)) {
                      return locale;
                    }
                    return supportedLocales.first;
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
