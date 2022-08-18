import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_states.dart';

class AppCubits extends Cubit<PageState> {
  AppCubits() : super(PageState());

  setPage(AppPage appPage) {
    emit(state.copyWith(appPage: appPage));
  }
}
