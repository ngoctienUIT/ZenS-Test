import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff29B363),
      height: 140,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            "A joke a day keeps the doctor away",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            "If you joke wrong way, your teeth have to pay. (Serious)",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
