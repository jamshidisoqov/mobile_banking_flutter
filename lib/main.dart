import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/splash/splash_screen.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,   // *** bu 3 qator til uchun qo'shildi
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {

      },
    );
  }
}