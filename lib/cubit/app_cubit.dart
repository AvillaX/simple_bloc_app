import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc_app/language/app_localizations.dart';

part 'app_states.dart';

class AppCubits extends Cubit<PageState> {
  AppCubits() : super(PageState());

  setRedPage() {
    emit(state.copyWith(
      appPage: AppPage.red,
      color: Colors.red,
      title: 'titleRed',
      description: 'descriptionRed',
    ));
  }

  setGreenPage() {
    emit(state.copyWith(
      appPage: AppPage.green,
      color: Colors.green,
      title: 'titleGreen',
      description: 'descriptionGreen',
    ));
  }

  setBluePage() {
    emit(state.copyWith(
      appPage: AppPage.blue,
      color: Colors.blue,
      title: 'titleBlue',
      description: 'descriptionBlue',
    ));
  }

  setYellowPage() {
    emit(state.copyWith(
      appPage: AppPage.yellow,
      color: Colors.yellow,
      title: 'titleYellow',
      description: 'descriptionYellow',
    ));
  }
}
