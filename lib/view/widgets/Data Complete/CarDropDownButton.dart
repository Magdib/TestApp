import 'package:flutter/material.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/AppHelper.dart';
import 'package:task/core/constant/CustomIcons.dart';

class CarDropDownButton extends StatelessWidget {
  const CarDropDownButton({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.value,
    required this.items,
  }) : super(key: key);
  final String hintText;
  final void Function(String?)? onChanged;
  final String? value;
  final List<String>? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppHelper.appWidth(),
      height: 65,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          const Icon(
            CustomIcons.accicon,
            size: 30,
            color: AppColors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: AppHelper.appWidth() - 110,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                style: Theme.of(context).textTheme.bodyMedium,
                menuMaxHeight: 180,
                borderRadius: BorderRadius.circular(10),
                items: items
                    ?.map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    )
                    .toList(),
                icon: const Icon(Icons.arrow_downward_outlined),
                onChanged: onChanged,
                value: value,
                hint: Text(hintText,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
