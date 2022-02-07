import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';
import 'package:gameplay/themes/app_text_styles.dart';
import 'package:gameplay/widgets/category_card.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  String dayMon = "dd/mm";
  String time = "hh:mm";
  final _descriptionController = TextEditingController();

  void getDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
      builder: (ctx, child) => Theme(
        data: ThemeData.dark(),
        child: child!,
      ),
    );

    if (dateSelected != null) {
      setState(() {
        dayMon =
            "${dateSelected.day.toString().padLeft(2, '0')}/${dateSelected.month.toString().padLeft(2, '0')}";
      });
    }
  }

  void getTime() async {
    TimeOfDay? timeSelected = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timeSelected != null) {
      setState(() {
        time =
            "${timeSelected.hour.toString().padLeft(2, '0')}:${timeSelected.minute.toString().padLeft(2, '0')}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: const Text('Agendar partida'),
        backgroundColor: AppColors.primaryLight,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 40,
        bottom: 20,
      ),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categorias',
                style: AppTextStyles.subtitleBoldHome,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoryCard(
                    title: 'Ranqueadas',
                    icon: AppImages.ranqued,
                  ),
                  CategoryCard(
                    title: 'Duelo 1x1',
                    icon: AppImages.pvp,
                  ),
                  CategoryCard(
                    title: 'Diversão',
                    icon: AppImages.casual,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                width: size.width,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.primaryLight,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 64,
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF1D2766),
                            Color(0xFF171F52),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Selecionar um servidor',
                            style: AppTextStyles.subtitleBoldHome,
                            textAlign: TextAlign.center,
                          ),
                          const Icon(
                            Icons.arrow_right,
                            color: AppColors.heading,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dia e mês',
                        style: AppTextStyles.subtitleBoldHome,
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: getDate,
                        child: Container(
                          width: (size.width / 2) - 30,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF1D2766),
                                Color(0xFF171F52),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              dayMon,
                              style: AppTextStyles.titleHome,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Horário',
                        style: AppTextStyles.subtitleBoldHome,
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: getTime,
                        child: Container(
                          width: (size.width / 2) - 30,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF1D2766),
                                Color(0xFF171F52),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              time,
                              style: AppTextStyles.titleHome,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Descrição',
                style: AppTextStyles.subtitleBoldHome,
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: size.width,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF1D2766),
                      Color(0xFF171F52),
                    ],
                  ),
                ),
                child: TextFormField(
                  controller: _descriptionController,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  style: AppTextStyles.subtitleHome,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.secondary),
                child: Center(
                  child: Text(
                    'Agendar',
                    style: AppTextStyles.titleHome,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
