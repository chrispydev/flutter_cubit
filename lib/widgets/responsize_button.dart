import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class ResponsizeButton extends StatelessWidget {
  bool isResponsize;
  double? width;

  ResponsizeButton({Key? key, this.width = 120, this.isResponsize = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsize == true ? double.maxFinite :width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsize == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
            isResponsize == true ? Container(margin: const EdgeInsets.only(left: 20), child: AppText(text: "Book Trip Now", color: Colors.white,)): Container(),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
