import 'package:flutter/material.dart';
import 'package:luis_jorge_lopez_portfolio/pages/home_page.dart';
import 'package:luis_jorge_lopez_portfolio/providers/data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider.init()),
      ],
      child: MaterialApp(
        title: 'Luis Jorge López Hernández Portfolio.',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
        },
      ),
    );
  }
}
