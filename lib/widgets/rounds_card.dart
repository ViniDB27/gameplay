import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';
import 'package:gameplay/themes/app_text_styles.dart';

class RoundsCard extends StatelessWidget {
  const RoundsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: size.width,
      height: 95,
      child: Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 76,
              width: 80,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFF171F52),
                ),
                image: const DecorationImage(
                  image: AssetImage(AppImages.rectangle),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lendários',
                        style: AppTextStyles.subtitleBoldHome,
                      ),
                      Text(
                        'Ranqueadas',
                        style: AppTextStyles.subtitleHome,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'League of Legends',
                    style: AppTextStyles.subtitleHome,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today_rounded,
                            color: AppColors.secondary,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Sex 18/06 ás 21:00h',
                            style: AppTextStyles.subtitleBoldHome,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person_rounded,
                            color: AppColors.secondary,
                          ),
                          Text(
                            '3',
                            style: AppTextStyles.subtitleHome,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 1,
                        width: size.width - 125,
                        color: AppColors.primaryLight,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
