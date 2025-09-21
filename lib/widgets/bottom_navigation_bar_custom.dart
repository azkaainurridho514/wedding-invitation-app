import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<AppProviders>(context).currentIndex;
    return Container(
      color: Colors.transparent,
      height: 80,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              constraints: BoxConstraints(maxHeight: 65),
              padding: EdgeInsets.only(bottom: 5, top: 15),
              decoration: BoxDecoration(
                color: AppColors.whiteTextColor,
                border: Border(
                  top: BorderSide(color: AppColors.greyBorderColor, width: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Provider.of<AppProviders>(context, listen: false)
                            .currentIndex = 0;
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              selectedPage == 0
                                  ? AppIcons.dashboardOn
                                  : AppIcons.dashboardOff,
                              height: 25,
                              width: 25,
                            ),
                            textBuild(
                              text: "Dasbor",
                              fontSize: 9,
                              color: AppColors.greyTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Provider.of<AppProviders>(context, listen: false)
                            .currentIndex = 1;
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              selectedPage == 1
                                  ? AppIcons.tamuOn
                                  : AppIcons.tamuOff,
                              height: 25,
                              width: 25,
                            ),
                            textBuild(
                              text: "Tamu",
                              fontSize: 9,
                              color: AppColors.greyTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: const SizedBox()),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Provider.of<AppProviders>(context, listen: false)
                            .currentIndex = 2;
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              selectedPage == 2
                                  ? AppIcons.rsvpOn
                                  : AppIcons.rsvpOff,
                              height: 25,
                              width: 25,
                            ),
                            textBuild(
                              text: "RSVP",
                              fontSize: 9,
                              color: AppColors.greyTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Provider.of<AppProviders>(context, listen: false)
                            .currentIndex = 3;
                      },
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              selectedPage == 3
                                  ? AppIcons.settingOn
                                  : AppIcons.settingOff,
                              height: 25,
                              width: 25,
                            ),
                            textBuild(
                              text: "Pengaturan",
                              fontSize: 9,
                              color: AppColors.greyTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(AppIcons.qrCode, height: 30, width: 30),
            ),
          ),
        ],
      ),
    );
  }
}
