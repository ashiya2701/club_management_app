import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_sheet_button_widget.dart';
import 'forget_mail_screen.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Make Selection",
                style: Theme.of(context).textTheme.headline4),
            Text("Select one of the options given below to reset your password",
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 10.0),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              title: "Email Id",
              subTitle: "Reset Via Email",
              btnIcon: Icons.mail_outline_rounded,
            ),
            const SizedBox(height:10.0),
            ForgetPasswordBtnWidget(
              onTap: () {},
              title: "Phone Nubmer",
              subTitle: "Reset via Phone Nubmer",
              btnIcon: Icons.mobile_friendly_rounded,
            ), 
          ],
        ),
      ),
    );
  }
}
