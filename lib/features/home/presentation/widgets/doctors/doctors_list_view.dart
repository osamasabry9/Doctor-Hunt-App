import 'package:flutter/material.dart';

import '../../../data/models/specializations_response_model.dart';
import 'doctors_list_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    super.key,
    required this.doctorsList,
  });
  final List<Doctors?> doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList.length,
        itemBuilder: (context, index) {
          return DoctorsListItem(doctorsModel: doctorsList[index]!);
        },
      ),
    );
  }
}
