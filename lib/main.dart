import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data_class.dart';
import 'package:news_app/first_page.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int count = 0;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataClass(),
        )
      ],
      child: const GetMaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
