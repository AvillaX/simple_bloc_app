part of 'app_cubit.dart';

enum AppPage { home, red, green, blue, yellow }

class PageState extends Equatable {
  PageState({
    this.appPage = AppPage.home,
    this.color = Colors.black,
    this.description = '',
    this.title = '',
  });

  final AppPage appPage;
  final String title;
  final String description;
  final Color color;

  PageState copyWith({
    required AppPage appPage,
    String? title,
    String? description,
    Color? color,
  }) {
    return PageState(
      appPage: appPage,
      title: title ?? this.title,
      description: description ?? this.description,
      color: color ?? this.color,
    );
  }

  @override
  List<Object?> get props => [appPage];
}
