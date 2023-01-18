import 'package:client/pages/food_detail/components/food_detail_item_container/food_detail_item_container.dart';
import 'package:flutter/material.dart';

class FoodDescriptionView extends StatefulWidget {
  const FoodDescriptionView({Key? key}) : super(key: key);

  @override
  State<FoodDescriptionView> createState() => _FoodDescriptionViewState();
}

class _FoodDescriptionViewState extends State<FoodDescriptionView> {
  @override
  Widget build(BuildContext context) {
    return FoodDetailItemContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('营养价值',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(
              '草莓还有较高的药用和医疗价值。据报道，从草莓植株中提取出的“草莓胺”,治疗白血病、障碍性贫血等血液病有较好的疗效。草莓味甘酸、性凉、无毒，能润、生津、利痰、健脾、解酒、补血、化脂，对肠胃和心血管病有一定防治作用。'),
        ],
      ),
    );
  }
}
