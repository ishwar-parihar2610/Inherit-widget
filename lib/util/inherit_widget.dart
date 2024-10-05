import 'package:flutter/material.dart';
import 'package:learn_inheritwidget/util/data_class.dart';

class AppConfigInherit extends InheritedWidget {
  final Widget childData;
  final HomeClassData homeClassData;

  const AppConfigInherit({
    required this.childData,
    required this.homeClassData,
    super.key,
  }) : super(child: childData);

  @override
  bool updateShouldNotify(covariant AppConfigInherit oldWidget) {
    return oldWidget.homeClassData.name != homeClassData.name;
  }

  static AppConfigInherit of(BuildContext context) {
    AppConfigInherit? appConfig =
        context.dependOnInheritedWidgetOfExactType<AppConfigInherit>();
    return appConfig!;
  }
}
