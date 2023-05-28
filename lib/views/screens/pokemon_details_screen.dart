import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pokedex_pokemon_app/components/pokemon_details_header.dart';
import 'package:pokedex_pokemon_app/constants/screen_size.dart';
import 'package:pokedex_pokemon_app/styles/app_styles.dart';

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  height: screenHeight(context) * 0.37,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xFFF3F9EF)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      40.height,
                      IconButton(
                          onPressed: () {
                            context.go("/homescreen");
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          )),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const PokemonDetailsHeader()
                    ],
                  ),
                ),
                //measurement details
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 17),
                  child: Row(
                    children: [
                      measurementDetails('Height', 69),
                      50.width,
                      measurementDetails('Weight', 7),
                      50.width,
                      measurementDetails('BMI', 14.7),
                    ],
                  ),
                ),
                const Divider(
                  color: AppStyles.bgColor,
                  thickness: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Base stats',
                          style: AppStyles.tabBarText
                              .copyWith(fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    baseStatsDetails('Hp', 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor1,
                        maxSteps: 6,
                        currentStep: 1,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Attack', 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor1,
                        maxSteps: 6,
                        currentStep: 2,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Defense', 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor1,
                        maxSteps: 6,
                        currentStep: 2,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Special Attack', 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor2,
                        maxSteps: 6,
                        currentStep: 4,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Special Defense', 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor2,
                        maxSteps: 6,
                        currentStep: 4,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Speed', 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor1,
                        maxSteps: 6,
                        currentStep: 1,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                    5.height,
                    baseStatsDetails('Attack power', 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: LinearProgressBar(
                        backgroundColor: Colors.grey,
                        progressColor: AppStyles.progressColor1,
                        maxSteps: 6,
                        currentStep: 2,
                        progressType: LinearProgressBar.progressTypeLinear,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 10,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 157,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36), color: Colors.blue),
                child: Text(
                  'Mark as favourite',
                  style: AppStyles.titleText.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column measurementDetails(String measureName, num measureValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          measureName,
          style: AppStyles.bodyText,
        ),
        5.height,
        Text(
          measureValue.toString(),
          style: AppStyles.titleText.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

Padding baseStatsDetails(String categoryName, num categoryValue) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryName,
          style: AppStyles.titleText.copyWith(fontWeight: FontWeight.w400),
        ),
        5.width,
        Text(
          categoryValue.toString(),
          style: AppStyles.titleText,
        )
      ],
    ),
  );
}
