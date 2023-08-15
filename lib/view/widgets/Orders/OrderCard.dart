import 'package:flutter/material.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/AppImages.dart';
import 'package:task/view/widgets/shared/GreyDivider.dart';

import 'CardButton.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                height: 60, width: 60, child: Image.asset(AppImages.lemona)),
            Column(
              children: [
                Text(
                  'مطاعم ليمونة',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primaryColor,
                    ),
                    Text(
                      '3.2 كم',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const GreyDivider(),
        const SizedBox(
          height: 5,
        ),
        Text(
          'طلب رقم : 23434343535',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const GreyDivider(),
        Row(
          children: [
            SizedBox(
                height: 40, width: 40, child: Image.asset(AppImages.kasem)),
            const SizedBox(
              width: 10,
            ),
            Text(
              'قاسم الفهد',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
        const GreyDivider(),
        Row(
          children: [
            const Icon(
              Icons.calendar_today_outlined,
              color: AppColors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text('تاريخ الطلب : 2019/12/12',
                style: Theme.of(context).textTheme.labelMedium!)
          ],
        ),
        const GreyDivider(),
        Column(
          children: [
            Text(
              ' وجبة الفراخ المشوية , البيبسي كولا , كل \nالإضافات المطلوبة',
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CardButton(
                  buttonBody: 'كل التفاصيل',
                  color: AppColors.white.withOpacity(0.6),
                  textColor: AppColors.primaryColor,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CardButton(
                  buttonBody: 'تأكيد الطلب',
                  onTap: () {},
                  color: AppColors.primaryColor,
                  textColor: AppColors.white,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
