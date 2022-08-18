import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/cubit/app_cubit.dart';
import 'package:simple_bloc_app/page_model.dart';

class AppLogics extends StatelessWidget {
  const AppLogics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, PageState>(
      builder: (context, state) {
        return PageModel(
          color: state.color,
          description: state.description,
          title: state.title,
        );
      },
    );
  }
}
