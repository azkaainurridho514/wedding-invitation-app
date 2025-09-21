import 'package:flutter/material.dart';
import 'package:maxximum_digital/utils/constant.dart';
import 'package:maxximum_digital/utils/widgets.dart';

class RsvpPage extends StatefulWidget {
  const RsvpPage({super.key});

  @override
  State<RsvpPage> createState() => _RsvpPageState();
}

class _RsvpPageState extends State<RsvpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          _buildCardStatus(),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder:
                (context, index) => _buildCard(
                  index,
                  index == 2 || index == 6
                      ? 2
                      : index == 3
                      ? 1
                      : 0,
                ),
            itemCount: 7,
          ),
        ],
      ),
    );
  }

  Widget _buildCardStatus() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(color: AppColors.greenCardStatusColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textBuild(
                  text: "4",
                  fontSize: 14,
                  color: AppColors.blackTextColor,
                ),
                textBuild(
                  text: "Hadir",
                  fontSize: 12,
                  color: AppColors.greyTextColor,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(color: AppColors.yellowCardStatusColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textBuild(
                  text: "2",
                  fontSize: 14,
                  color: AppColors.blackTextColor,
                ),
                textBuild(
                  text: "Masih Ragu",
                  fontSize: 12,
                  color: AppColors.greyTextColor,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(color: AppColors.redCardStatusColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textBuild(
                  text: "1",
                  fontSize: 14,
                  color: AppColors.blackTextColor,
                ),
                textBuild(
                  text: "Tidak Hadir",
                  fontSize: 12,
                  color: AppColors.greyTextColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard(int index, int status) {
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
            flex: 3,
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
                      text: "Users ${index}",
                      fontSize: 14,
                      color: AppColors.blackTextColor,
                    ),
                    textBuild(
                      text: "user name  ${index}",
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
                color:
                    status == 0
                        ? AppColors.greenCardStatusColor
                        : status == 1
                        ? AppColors.redCardStatusColor
                        : AppColors.yellowCardStatusColor,
              ),
              child: textBuild(
                textAlign: TextAlign.center,
                text:
                    status == 0
                        ? "Hadir"
                        : status == 1
                        ? "Tidak Hadir"
                        : "Masih Ragu",
                fontSize: 8,
                color: AppColors.blackTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
