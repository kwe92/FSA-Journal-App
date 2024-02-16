import 'package:flutter/material.dart';
import 'package:journal_app/app/theme/colors.dart';
import 'package:journal_app/features/calendar/ui/calendar_view_model.dart';
import 'package:journal_app/features/journal/ui/widget/filter_button_model.dart';
import 'package:stacked/stacked.dart';

class FilterButtonCalendar extends ViewModelWidget<CalendarViewModel> {
  const FilterButtonCalendar({super.key});

  @override
  Widget build(BuildContext context, CalendarViewModel viewModel) {
    return ViewModelBuilder<FilterButtonModel>.reactive(
      viewModelBuilder: () => FilterButtonModel(),
      builder: (context, FilterButtonModel model, _) => DropdownButton<String>(
        value: model.dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        style: const TextStyle(color: AppColors.mainThemeColor),
        underline: Container(
          height: 2,
          color: AppColors.mainThemeColor,
        ),
        onChanged: (String? value) {
          model.setDropdownValue(value!);
          viewModel.setFilteredJournalEntries(value, viewModel.query);
        },
        items: <DropdownMenuItem<String>>[
          ...FilterButtonModel.dropdownOptions.map<DropdownMenuItem<String>>(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: FittedBox(
                child: Text(value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
