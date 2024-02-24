import 'package:flutter/material.dart';
import 'package:journal_app/app/general/constants.dart';
import 'package:journal_app/app/theme/colors.dart';
import 'package:journal_app/features/shared/abstractions/mood_mixin.dart';
import 'package:journal_app/features/shared/services/app_mode_service.dart';
import 'package:journal_app/features/shared/ui/filter_button.dart';
import 'package:journal_app/features/shared/ui/mood_type_counter.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class HideableMoodCount<T extends MoodMixin> extends ViewModelWidget<T> {
  const HideableMoodCount({super.key});

  @override
  Widget build(BuildContext context, T viewModel) {
    return SliverAppBar(
      backgroundColor: context.watch<AppModeService>().isLightMode ? Colors.white : AppColors.darkGrey1,
      toolbarHeight: 32,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      // floating: required to make SliverAppBar snappable
      floating: true,
      // snap: required to make SliverAppBar snappable
      snap: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 0, top: 8.0, right: 16),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MoodTypeCounter<T>(moodType: MoodType.awesome.text, moodCount: viewModel.awesomeCount),
                  MoodTypeCounter<T>(moodType: MoodType.happy.text, moodCount: viewModel.happyCount),
                  MoodTypeCounter<T>(moodType: MoodType.okay.text, moodCount: viewModel.okayCount),
                  MoodTypeCounter<T>(moodType: MoodType.bad.text, moodCount: viewModel.badCount),
                  MoodTypeCounter<T>(moodType: MoodType.terrible.text, moodCount: viewModel.terribleCount),
                ],
              ),
            ),
            FilterButton<T>()
          ],
        ),
      ),
    );
  }
}