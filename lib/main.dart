import 'package:flutter/material.dart';
import 'package:maxximum_digital/pages/login.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppScreen());
}

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AppProviders())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Maxximum Digital',
        home: LoginPage(),
      ),
    );
  }
}
