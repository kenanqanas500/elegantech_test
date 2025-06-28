import 'package:flutter_application_1/app/app_wrapper/cubit/app_wrapper_cubit.dart';
import 'package:flutter_application_1/app/app_wrapper/cubit/authorized_cubit.dart';
import 'package:flutter_application_1/app/features/login/cubit/login_cubit.dart';
import 'package:flutter_application_1/app/features/login/repo/login_repo.dart';
import 'package:flutter_application_1/app/features/products/cubit/all_products_cubit.dart';
import 'package:flutter_application_1/app/features/products/repo/products_repo.dart';
import 'package:flutter_application_1/language_cubit.dart';
import 'package:flutter_application_1/theme_wrapper/theme_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Dependencies {
  static void registerRepos() {
    getIt.registerFactory(() => AuthorizedCubit());
    getIt.registerFactory(() => AppWrapperCubit());
    getIt.registerFactory(() => ThemeCubit());
    getIt.registerFactory(() => LoginCubit(repo: getIt()));
    getIt.registerFactory(() => AllProductsCubit(repo: getIt()));
    getIt.registerFactory(() => LanguageCubit());

    //! Repositories
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo());
    getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo());
  }
}
