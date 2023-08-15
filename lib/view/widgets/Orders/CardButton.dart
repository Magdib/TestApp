import 'package:flutter/material.dart';
import 'package:task/core/constant/AppColors.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {super.key,
      this.onTap,
      this.hight,
      required this.buttonBody,
      required this.color,
      required this.textColor});

  final VoidCallback? onTap;
  final String buttonBody;
  final double? hight;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: color,
      disabledTextColor: AppColors.lightGrey,
      height: hight ?? 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
          child: Text(
        buttonBody,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: textColor, fontSize: 13),
      )),
    );
  }
}
