import 'package:flutter/material.dart';

import 'doctors_list_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return const DoctorsListItem();
        },
      ),
    );
  }
}
