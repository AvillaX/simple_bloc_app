import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/language/app_localizations.dart';
import 'package:simple_bloc_app/language/cubit/language_cubit.dart';

import 'cubit/app_cubit.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  Color color;
  String title;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final bloc = BlocProvider.of<AppCubits>(context);

    final List<String> menuTitles = [
      AppLocalizations.of(context)?.trans('titleRed') ??
          AppLocalizations.of(context)?.trans('titleRed') ??
          '',
      AppLocalizations.of(context)?.trans('titleGreen') ??
          AppLocalizations.of(context)?.trans('titleGreen') ??
          '',
      AppLocalizations.of(context)?.trans('titleBlue') ??
          AppLocalizations.of(context)?.trans('titleBlue') ??
          '',
      AppLocalizations.of(context)?.trans('titleYellow') ??
          AppLocalizations.of(context)?.trans('titleYellow') ??
          '',
    ];

    List<Widget> menuItems = [];
    bool switchValue = false;

    menuItems.add(
      DrawerHeader(
        decoration: BoxDecoration(color: color),
        child: Column(
          children: [
            Text(title),
            SizedBox(
              width: double.maxFinite,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () =>
                        context.read<LanguageCubit>().changeLang(context, 'en'),
                    child: Text('set english')),
                ElevatedButton(
                    onPressed: () =>
                        context.read<LanguageCubit>().changeLang(context, 'pl'),
                    child: Text('set polish')),
              ],
            ),
          ],
        ),
      ),
    );

    menuTitles.forEach(
      (String element) {
        menuItems.add(
          ListTile(
            title: Text(element, style: const TextStyle(fontSize: 18)),
            onTap: () {
              switch (element) {
                case 'Red Page':
                  bloc.setRedPage();
                  break;
                case 'Czerwona Strona':
                  bloc.setRedPage();
                  break;
                case 'Green Page':
                  bloc.setGreenPage();
                  break;
                case 'Zielona Strona':
                  bloc.setGreenPage();
                  break;
                case 'Blue Page':
                  bloc.setBluePage();
                  break;
                case 'Niebieska Strona':
                  bloc.setBluePage();
                  break;
                case 'Yellow Page':
                  bloc.setYellowPage();
                  break;
                case 'Żółta Strona':
                  bloc.setYellowPage();
                  break;
              }
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
    return menuItems;
  }
}
