import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxximum_digital/providers/providers.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';
import 'package:provider/provider.dart';

class TamuPage extends StatefulWidget {
  const TamuPage({super.key});

  @override
  State<TamuPage> createState() => _TamuPageState();
}

class _TamuPageState extends State<TamuPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          ListView(
            shrinkWrap: false,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:
                          () =>
                              Provider.of<AppProviders>(context, listen: false)
                                  .isLeft = true,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          color:
                              Provider.of<AppProviders>(context).isLeft
                                  ? AppColors.whiteTextColor
                                  : AppColors.primaryColor,
                        ),
                        child: textBuild(
                          text: "Tamu Mempelai Pria | 3",
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          color:
                              Provider.of<AppProviders>(context).isLeft
                                  ? AppColors.blackTextColor
                                  : AppColors.whiteTextColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:
                          () =>
                              Provider.of<AppProviders>(context, listen: false)
                                  .isLeft = false,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor),
                          color:
                              Provider.of<AppProviders>(context).isLeft
                                  ? AppColors.primaryColor
                                  : AppColors.whiteTextColor,
                        ),
                        child: textBuild(
                          text: "Tamu Mempelai Wanita | 10",
                          fontSize: 10,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          color:
                              Provider.of<AppProviders>(context).isLeft
                                  ? AppColors.whiteTextColor
                                  : AppColors.blackTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 12,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        color: AppColors.greyBorderColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    labelText: 'Cari Tamu',
                    hintText: 'Cari Tamu',
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
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => _buildCard(index),
                itemCount: 4,
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: AppColors.whiteTextColor,
                            width: .5,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppIcons.contact,
                            width: 20,
                            color: AppColors.whiteTextColor,
                          ),
                          const SizedBox(width: 5),
                          textBuild(
                            text: "Tambah Dari Kontak",
                            fontSize: 8.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: AppColors.whiteTextColor,
                            width: .5,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textBuild(
                            text: "Tambah Manual",
                            fontSize: 8.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteTextColor,
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset(
                            AppIcons.manualContact,
                            height: 20,
                            color: AppColors.whiteTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyBorderColor),
        color: AppColors.whiteTextColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryColor,
                    child: textBuild(
                      text: "N",
                      fontSize: 15,
                      color: AppColors.whiteTextColor,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textBuild(
                      text: "users ${index}",
                      fontSize: 14,
                      color: AppColors.blackTextColor,
                    ),
                    textBuild(
                      text: "Tasikmalaya",
                      fontSize: 11,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                index == 1
                    ? SvgPicture.asset(AppIcons.check, width: 20, height: 20)
                    : Image.asset(AppIcons.wa, width: 20, height: 20),
                const SizedBox(width: 10),
                SvgPicture.asset(AppIcons.trash, width: 20, height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
