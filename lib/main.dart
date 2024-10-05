import 'package:flutter/material.dart';
import 'package:learn_inheritwidget/screens/home_screen.dart';
import 'package:learn_inheritwidget/util/data_class.dart';
import 'package:learn_inheritwidget/util/inherit_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HomeClassData homeClassData = HomeClassData();

  void updateHomeClassData(HomeClassData newData) {
    setState(() {
      homeClassData = newData;
    });
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      updateHomeClassData(HomeClassData(name: "kamlesh"));
      print("update working");
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppConfigInherit(
      homeClassData: homeClassData,
      childData: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreem(),
      ),
    );
  }
}
