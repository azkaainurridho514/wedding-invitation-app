import 'package:flutter/material.dart';
import 'package:maxximum_digital/pages/app.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameoremailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppIcons.logoColor, height: 60),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
              child: TextField(
                controller: usernameoremailController,
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: AppColors.greyBorderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'Username/E-Mail',
                  hintText: 'Masukkan username / email',
                  labelStyle: const TextStyle(
                    fontSize: 11,
                    color: AppColors.blackTextColor,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 11,
                    color: AppColors.blackTextColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
              child: TextField(
                controller: usernameoremailController,
                style: TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: AppColors.greyBorderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'Password',
                  hintText: 'Masukkan password',
                  labelStyle: const TextStyle(
                    fontSize: 11,
                    color: AppColors.blackTextColor,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 11,
                    color: AppColors.blackTextColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Provider.of<AppProviders>(context, listen: false).isLoading =
                    kLoadNothing;
                Provider.of<AppProviders>(context, listen: false).isLogin =
                    true;
                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const AppPage()),
                  );
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 30, left: 30),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.primaryColor,
                ),
                child: textBuild(
                  text:
                      Provider.of<AppProviders>(context).isLoading == kLoading
                          ? "Sedang login..."
                          : "Login",
                  textAlign: TextAlign.center,
                  fontSize: 13,
                  color: AppColors.whiteTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
