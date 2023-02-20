import 'package:flutter/cupertino.dart';
import '../../main.dart';
enum Routes {
  splash,
  main,
  pinCode,
  language,
}

Future<dynamic> push(Routes route, {Map<String, dynamic>? arguments}) async {
  return await Navigator.pushNamed(
    mainKey.currentState!.context,
    route.name,
    arguments: arguments,
  );
}

Future<dynamic> replace(Routes route, {Map<String, dynamic>? arguments}) async {
  return await Navigator.pushReplacementNamed(
    mainKey.currentState!.context,
    route.name,
    arguments: arguments,
  );
}

dynamic pop([dynamic result]) async {
  return Navigator.pop(
    mainKey.currentState!.context,
    result,
  );
}
