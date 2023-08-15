import 'package:flutter/material.dart';
import 'package:task/core/constant/AppColors.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.veryLightGrey.withOpacity(0.5),
      thickness: 1,
    );
  }
}
