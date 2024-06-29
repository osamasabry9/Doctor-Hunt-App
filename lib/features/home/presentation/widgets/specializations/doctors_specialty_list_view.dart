import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specializations_response_model.dart';
import '../../cubit/home_cubit.dart';
import 'doctors_specialty_list_item.dart';

class SpecialtyListView extends StatefulWidget {
  const SpecialtyListView({
    super.key,
    required this.specializationsList,
  });
  final List<SpecializationsData?> specializationsList;

  @override
  State<SpecialtyListView> createState() => _SpecialtyListViewState();
}

class _SpecialtyListViewState extends State<SpecialtyListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget
                      .specializationsList[index]?.id);

            },
            child: DoctorsSpecialtyListItem(
              specializationsData: widget.specializationsList[index],
              index: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
