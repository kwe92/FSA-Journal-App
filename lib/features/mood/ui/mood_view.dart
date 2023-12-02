import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:journal_app/app/app_router.gr.dart';
import 'package:journal_app/app/general/constants.dart';
import 'package:journal_app/app/resources/reusables.dart';
import 'package:journal_app/app/theme/theme.dart';
import 'package:journal_app/features/mood/models/mood.dart';
import 'package:journal_app/features/mood/ui/mood_view_model.dart';
import 'package:journal_app/features/mood/ui/widgets/cancel_button.dart';
import 'package:journal_app/features/mood/ui/widgets/mood_card.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/ui/button/selectable_button.dart';
import 'package:stacked/stacked.dart';

// TODO: Review what can be refactored | add comments

@RoutePage()
class MoodView extends StatelessWidget {
  const MoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => MoodViewModel(),
      builder: (context, model, _) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gap16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CancelButton(onPressed: () {
                      Navigator.of(context).pop();
                    })
                  ],
                ),
                gap8,
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 200,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "How are you feeling today?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        gap36,

                        //TODO Review: GridView.builder | why Flexible wrapping is required with in Flex, Row or Column Widgets for GridView.builder | what SliverGridDelegateWithFixedCrossAxisCount is
                        Flexible(
                            child: GridView.builder(
                          itemCount: moodsMaps.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: (100 / 160),
                          ),
                          itemBuilder: (context, i) {
                            // TODO: continue implementing selectable mood card | maybe add is selected property | implement MoodView and add isSelected member variable
                            return GestureDetector(
                              onTap: () {
                                model.setIndex(i);
                                model.setMoodType(moodsMaps[i].key);
                              },
                              child: MoodCard(
                                isSelected: model.selectedIndex == i ? true : false,
                                mood: Mood(
                                    moodColor: moodsMaps[i].value[0],
                                    moodImagePath: moodsMaps[i].value[1],
                                    imageSize: moodsMaps[i].value[2],
                                    moodText: moodsMaps[i].key),
                              ),
                            );
                          },
                        )
                            //TODO END======================================================================
                            //! dont delete until mood card is selectable============
                            //  GridView.count(
                            //   crossAxisCount: 3,
                            //   crossAxisSpacing: 12,
                            //   mainAxisSpacing: 12,
                            //   // set the width and hight of your children with childAspectRatio: (width / height)
                            //   childAspectRatio: (100 / 160),
                            // children: [...moodCards],
                            // ),
                            //! end of dont delete====================================
                            ),
                        SelectableButton(
                            mainTheme: lightGreenButtonTheme,
                            labelPadding: const EdgeInsets.symmetric(vertical: 16),
                            onPressed: () {
                              appRouter.push(AddEntryRoute(moodType: model.moodType));
                            },
                            label: "Continue"),
                        const Gap(120)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// TODO: add Colors to app colors | color variable name should represent mood

final Map<String, List<dynamic>> moodsData = {
  MoodType.awesome: [const Color(0xfffcb39c), "assets/images/very_happy_face.svg", 40.0],
  MoodType.happy: [const Color(0xfffbe29c), "assets/images/happy_face.svg", 50.0],
  MoodType.okay: [const Color(0xffc5edd3), "assets/images/meh_face.svg", 50.0],
  MoodType.bad: [const Color(0xffa9efe1), "assets/images/sad_face.svg", 50.0],
  MoodType.terible: [const Color(0xffaed9e0), "assets/images/aweful_face.svg", 70.0]
};

List<MapEntry<String, List>> moodsMaps = moodsData.entries.toList();

List<Mood> moods = moodsData.entries
    .map((moodEntry) =>
        Mood(moodColor: moodEntry.value[0], moodImagePath: moodEntry.value[1], imageSize: moodEntry.value[2], moodText: moodEntry.key))
    .toList();

// List<MoodCard> moodCards = moods.map((moodModel) => MoodCard(mood: moodModel)).toList();
