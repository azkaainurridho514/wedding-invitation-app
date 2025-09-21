import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxximum_digital/main.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBuild(
                      text: "Nama Event",
                      fontSize: 12,
                      color: AppColors.greyTextColor,
                    ),
                    textBuild(
                      text: "Ina Amalia & Alfi Firdaus",
                      fontSize: 12,
                      color: AppColors.blackTextColor,
                    ),
                  ],
                ),
              ),
              Expanded(child: SvgPicture.asset(AppIcons.pencil)),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBuild(
                      text: "Kepada Undangan",
                      fontSize: 12,
                      color: AppColors.greyTextColor,
                    ),
                    textBuild(
                      text: "*Kepada Yth : ...",
                      fontSize: 12,
                      color: AppColors.blackTextColor,
                    ),
                  ],
                ),
              ),
              Expanded(child: SvgPicture.asset(AppIcons.pencil)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            spacing: 5,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(AppIcons.img, fit: BoxFit.cover),
                          Container(
                            // width: 40,
                            // height: 40,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(127, 52, 191, 75),
                            ),
                            child: Image.asset(AppIcons.edit, width: 15),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                        width: double.infinity,
                        child: textBuild(
                          text: "Layar Background",
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(AppIcons.img, fit: BoxFit.cover),
                          Container(
                            // width: 40,
                            // height: 40,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(127, 52, 191, 75),
                            ),
                            child: Image.asset(AppIcons.edit, width: 15),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                        width: double.infinity,
                        child: textBuild(
                          text: "Layar Sapa",
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBuild(
                      text: "Akses Layar Sapa",
                      fontSize: 12,
                      color: AppColors.greyTextColor,
                    ),
                    textBuild(
                      text: "Tap Untuk Menyalin Link Layar Sapa",
                      fontSize: 12,
                      color: AppColors.blackTextColor,
                    ),
                  ],
                ),
              ),
              Expanded(child: SvgPicture.asset(AppIcons.copy)),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Provider.of<AppProviders>(context, listen: false).isLogin = false;

              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => AppScreen()),
                (route) => false,
              );
            },
            child: Container(
              color: AppColors.whiteTextColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBuild(
                          text: "Logout",
                          fontSize: 12,
                          color: AppColors.greyTextColor,
                        ),
                        textBuild(
                          text: "Keluar Dari Akun Ini",
                          fontSize: 12,
                          color: AppColors.blackTextColor,
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SvgPicture.asset(AppIcons.logout)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
