import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/cubit/app_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubits>(
      create: (_) => AppCubits(),
      child: HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubits>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setPage(AppPage.red),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setPage(AppPage.green),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setPage(AppPage.blue),
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => cubit.setPage(AppPage.yellow),
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
