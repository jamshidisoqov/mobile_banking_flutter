import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_banking_flutter/core/extensions/navigator_extension.dart';
import 'package:mobile_banking_flutter/screens/main/choose_language.dart';
import 'package:mobile_banking_flutter/screens/main/main_screen.dart';
import 'package:mobile_banking_flutter/screens/pin/pin_screen.dart';
import 'package:mobile_banking_flutter/screens/splash/splash_screen.dart';

final mainKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  // *** Bu qismlar tilni nastroykasi uchun qo'shildi
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assets/tr',
    supportedLocales: const [Locale("uz"), Locale("ru"), Locale("en")],
    useOnlyLangCode: true,
    fallbackLocale: const Locale('uz'),
    startLocale: const Locale("uz"),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,   // *** bu 3 qator til uchun qo'shildi
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        navigatorKey: mainKey,
        initialRoute: Routes.splash.name,
        routes: {
          Routes.splash.name:(_) => const SplashScreen(),
          Routes.pinCode.name:(_) => const PinCodeScreen(),
          Routes.main.name:(_) => const MainScreen(),
          Routes.language.name:(_) => const ChooseLanguage(),
        },
      ),
    );
  }
}