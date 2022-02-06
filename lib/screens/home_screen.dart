import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';
import 'package:gameplay/themes/app_text_styles.dart';
import 'package:gameplay/widgets/category_card.dart';
import 'package:gameplay/widgets/rounds_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          child: Center(
            child: ListTile(
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              title: Text.rich(TextSpan(
                text: 'Olá, ',
                style: AppTextStyles.titleHome,
                children: [
                  TextSpan(
                    text: 'Vinicio',
                    style: AppTextStyles.titleBoldHome,
                  )
                ],
              )),
              subtitle: Text(
                'Hoje é dia de vitória',
                style: AppTextStyles.subtitleHome,
              ),
              trailing: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CategoryCard(
                  title: 'Ranqueada',
                  icon: AppImages.ranqued,
                ),
                CategoryCard(
                  title: 'PVP',
                  icon: AppImages.pvp,
                ),
                CategoryCard(
                  title: 'Casual',
                  icon: AppImages.casual,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Partidas agendadas',
                  style: AppTextStyles.subtitleBoldHome,
                ),
                Text(
                  'Total 6',
                  style: AppTextStyles.subtitleHome,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Expanded(
              child: Container(
                width: size.width,
                height: size.height - 400,
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (ctx, index) => const RoundsCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

