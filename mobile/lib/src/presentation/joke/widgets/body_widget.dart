import 'package:flutter/material.dart';

import '../../../data/jokes.dart';
import 'custom_button.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key, required this.index, required this.onPress})
      : super(key: key);

  final int index;
  final Function(bool isFunny) onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            jokes[index],
            style: const TextStyle(color: Color(0xff656565)),
            textAlign: TextAlign.justify,
          ),
          if (index < 4)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onPress: () => onPress(true),
                  text: "This is Funny!",
                  backgroundColor: const Color(0xff2C7EDB),
                ),
                CustomButton(
                  onPress: () => onPress(false),
                  text: "This is not funny.",
                  backgroundColor: const Color(0xff29B363),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
