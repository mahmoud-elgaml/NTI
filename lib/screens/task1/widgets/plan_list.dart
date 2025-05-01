import 'package:design_task/screens/task1/model/sub_model.dart';
import 'package:design_task/screens/task1/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PlanList extends StatelessWidget {
  PlanList({super.key});
  final List<SubModel> subModels = [
    SubModel(
      title: 'Yearly',
      subTitle: '-66% discount',
      price: '\$94.80',
      duration: 'every year',
      //
    ),

    SubModel(
      title: 'Monthly',
      subTitle: '-53% discount',
      price: '\$10.90',
      duration: 'every month',
    ),
    SubModel(
      title: 'Weekly',
      subTitle: '0.0',
      price: '\$5.90',
      duration: 'every week',
      //
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          subModels.map((sub) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(
                title: sub.title,
                subTitle: sub.subTitle,
                price: sub.price,
                duration: sub.duration,
              ),
            );
          }).toList(),
  
    
    );
  }
}
