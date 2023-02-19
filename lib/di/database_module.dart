import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpDatabase() {
  //DIO
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: "http://143.198.48.222:84/v1/mobile-bank/",
        connectTimeout: 5000,
        receiveTimeout: 5000,
        sendTimeout: 5000,
      ),
    ),
  );
}
