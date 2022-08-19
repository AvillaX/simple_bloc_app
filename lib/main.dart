import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_bloc_app/cubit/app_logics.dart';
import 'package:simple_bloc_app/cubit/app_cubit.dart';
import 'package:simple_bloc_app/language/cubit/language_cubit.dart';
import 'language/app_localizations_delegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, lang) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: lang,
            supportedLocales: const [
              Locale('en', ''),
              Locale('pl', ''),
            ],
            localizationsDelegates: [
              const AppLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            // localeResolutionCallback:
            //     (Locale? locale, Iterable<Locale> supportedLocales) {
            //   for (Locale supportedLocale in supportedLocales) {
            //     if (supportedLocale.languageCode == locale?.languageCode ||
            //         supportedLocale.countryCode == locale?.countryCode) {
            //       return supportedLocale;
            //     }
            //   }

            //   return supportedLocales.first;
            //},
            home: BlocProvider<AppCubits>(
              create: (context) => AppCubits(),
              child: AppLogics(),
            ),
          );
        },
      ),
    );
  }
}
