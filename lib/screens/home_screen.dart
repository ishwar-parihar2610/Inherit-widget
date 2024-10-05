import 'package:flutter/material.dart';
import 'package:learn_inheritwidget/util/data_class.dart';
import 'package:learn_inheritwidget/util/inherit_widget.dart';

class HomeScreem extends StatelessWidget {
  /// {@macro home_screen}
  const HomeScreem({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    print("update working 2 ");
    print("rebuild works");
    HomeClassData homeClassData = AppConfigInherit.of(context).homeClassData;
    return Scaffold(
        body: Center(
      child: Text(" ${homeClassData.name}"),
    ));
  }
}
