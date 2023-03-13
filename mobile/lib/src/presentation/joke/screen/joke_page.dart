import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/body_widget.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/header_widget.dart';

class JokePage extends StatefulWidget {
  const JokePage({Key? key}) : super(key: key);

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  int index = 0;
  List<bool> isFunnyList = List.filled(4, false, growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: BodyWidget(
              index: index,
              onPress: (isFunny) {
                if (index < 4) {
                  isFunnyList[index] = isFunny;
                  setState(() => index++);
                }
              },
            ),
          ),
          const SizedBox(height: 170),
        ],
      ),
      bottomSheet: const BottomWidget(),
    );
  }
}
