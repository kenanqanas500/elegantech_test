import 'package:dio/dio.dart';

// import '../refresh_token.dart';

class RequestInterceptors extends QueuedInterceptorsWrapper {
  Dio dio;
  RequestInterceptors(this.dio);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     final requestDetails = '''
// 🔄 API Request:
// 🔹 Method: ${options.method}
// 🔹 URL: ${options.baseUrl}
// 🔹 Bath: ${options.path}

// 🔹 Headers: ${options.headers}
// 🔹 Query: ${options.queryParameters}
// 🔹 Body: ${options.data}
// ''';
//     Captain.navigatorKey.currentState!.context.read<AuthorizedCubit>().loading(api: requestDetails);
    // if (options.uri.host.isEmpty) {
    //   Captain.navigatorKey.currentState!.context.read<AuthorizedCubit>().serverIpIsWrong();
    // }

    // bool withToken = options.extra['token'] ?? true;

    // if (withToken) {
    //   var token = await await HiveDB.singleTon.getToken();
    //   if (token != null) {
    //     options.headers.addAll({"Authorization": "Bearer $token"});
    //   }
    // }

    return handler.next(options);
  }
}
