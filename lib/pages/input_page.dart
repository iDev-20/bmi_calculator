import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  final ThemeData themeData = ThemeData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableCard(
                  cardChild: Column(
                    children: [
                      
                    ],
                  ),
                ),
                ReusableCard(),
              ],
            ),
          ),
          const ReusableCard(),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableCard(),
                ReusableCard(),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
