import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/cubit/app_cubit.dart';

import '../language/cubit/language_cubit.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<LanguageCubit>().changeStartLang();
    var cubit = BlocProvider.of<AppCubits>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setRedPage(),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setGreenPage(),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setBluePage(),
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setYellowPage(),
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
