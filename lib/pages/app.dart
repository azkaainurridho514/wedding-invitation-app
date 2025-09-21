import 'package:flutter/material.dart';
import 'package:maxximum_digital/pages/home.dart';
import 'package:maxximum_digital/pages/rsvp.dart';
import 'package:maxximum_digital/pages/setting.dart';
import 'package:maxximum_digital/pages/tamu.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/widgets/bottom_navigation_bar_custom.dart';
import 'package:provider/provider.dart';

List<Widget> pages = const [HomePage(), TamuPage(), RsvpPage(), SettingPage()];

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<AppProviders>(context).currentIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Image.asset(
          selectedPage == 0
              ? AppIcons.logoDashboardWhite
              : selectedPage == 1
              ? AppIcons.logoTamuWhite
              : selectedPage == 2
              ? AppIcons.logoRsvpWhite
              : AppIcons.logoSettingWhite,
          width: 150,
        ),
      ),
      backgroundColor: AppColors.whiteTextColor,
      body: IndexedStack(index: selectedPage, children: pages),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
