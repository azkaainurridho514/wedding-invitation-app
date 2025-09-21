import 'package:flutter/material.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: AppColors.primaryColor,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              width: MediaQuery.of(context).size.width,
              // height: 160,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primaryColor),
                color: AppColors.whiteTextColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.primaryColor,
                        child: textBuild(
                          text: "A",
                          fontSize: 15,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      textBuild(
                        text: "alfifirdaus0607",
                        fontSize: 12,
                        color: AppColors.blackTextColor,
                      ),
                    ],
                  ),
                  Divider(color: AppColors.primaryColor, thickness: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBuild(
                          text: "Nama Event",
                          fontSize: 11,
                          color: AppColors.greyTextColor,
                        ),
                        textBuild(
                          text: "Ina Amalia & Alfi Firdaus",
                          fontSize: 11,
                          color: AppColors.blackTextColor,
                        ),
                        const SizedBox(height: 10),
                        textBuild(
                          text: "Waktu Event",
                          fontSize: 11,
                          color: AppColors.greyTextColor,
                        ),
                        textBuild(
                          text: "26 Juni 2023",
                          fontSize: 11,
                          color: AppColors.blackTextColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: textBuild(
                  text: "Export To Excel",
                  fontSize: 8,
                  color: AppColors.primaryColor,
                ),
              ),
              Expanded(
                flex: 2,
                child: textBuild(
                  text: "Total Tamu Check In : 10",
                  fontSize: 12,
                  textAlign: TextAlign.right,
                  color: AppColors.blackTextColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
            bottom: 10,
          ),
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
                borderSide: const BorderSide(color: AppColors.greyBorderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(color: AppColors.blackTextColor),
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
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return _buildCard(index);
            },
          ),
        ),
      ],
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
                Stack(
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
                    index == 1 || index == 3
                        ? const SizedBox()
                        : Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.yellowColor,
                              shape: BoxShape.circle,
                            ),
                            child: textBuild(
                              text: "VIP",
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackTextColor,
                            ),
                          ),
                        ),
                  ],
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
                      text: "22/03/2023 09.00",
                      fontSize: 11,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.secondaryColor,
              ),
              child: textBuild(
                text: "Check In",
                fontSize: 8,
                textAlign: TextAlign.center,
                color: AppColors.whiteTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
