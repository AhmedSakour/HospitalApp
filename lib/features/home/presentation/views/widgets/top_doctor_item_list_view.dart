import 'package:flutter/material.dart';
import 'package:medsync/features/home/presentation/views/widgets/top_doctor_item.dart';

class TopDoctorItemListView extends StatelessWidget {
  const TopDoctorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const TopDoctorItem();
        },
      ),
    );
  }
}
