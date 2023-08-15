import 'package:flutter/material.dart';
import 'package:task/core/Constant/AppColors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hint,
    required this.icon,
  });
  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      style: Theme.of(context).textTheme.bodyMedium!,
      decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: Theme.of(context).primaryColor, width: 2.5)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.grey, width: 2.5)),
          prefixIcon: Icon(
            icon,
            color: AppColors.primaryColor,
            size: 35,
          )),
    );
  }
}
