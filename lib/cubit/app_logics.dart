import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/cubit/app_cubit.dart';
import 'package:simple_bloc_app/models/home_page.dart';
import 'package:simple_bloc_app/models/page_view_model.dart';

class AppLogics extends StatelessWidget {
  const AppLogics({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, PageState>(
      builder: (context, state) {
        if (state.appPage == AppPage.home) {
          return HomePageView();
        }
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.linear,
          child: PageModel(
            color: state.color,
            description: state.description,
            title: state.title,
          ),
        );
      },
    );
  }
}
