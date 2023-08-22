import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/views/home/home_screen.dart';
import 'package:quiz_app/views/match/gameplay_screen.dart';
import 'package:quiz_app/views/result/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> const HomeScreen(), binding: HomeScreenBinding()),
        GetPage(name: "/gamePlayScreen", page: ()=> GamePlayScreen(), binding: GamePlayScreenBinding()),
        GetPage(name: "/resultScreen", page: ()=> ResultScreen(), binding: ResultScreenBinding()),
      ],
    );
  }
}

