import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/new_home_page.dart';
import 'pages/plan_create_page.dart';
import 'pages/view_plans_page.dart';
import 'pages/word_book_manage_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '大宝背单词',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const NewHomePage()),
        GetPage(name: '/create-plan', page: () => const PlanCreatePage()),
        GetPage(name: '/view-plans', page: () => const ViewPlansPage()),
        GetPage(name: '/word-book-manage', page: () => const WordBookManagePage()),
      ],
    );
  }
}
