import 'package:flutter/material.dart';
import 'package:task/core/Constant/AppColors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15),
      disabledColor: AppColors.grey,
      minWidth: MediaQuery.of(context).size.width - 30,
      color: AppColors.primaryColor,
      onPressed: onPressed,
      child: Text("تأكيد إنشاء الحساب",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.white)),
    );
  }
}
