import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 170,
      child: Column(
        children: const [
          Divider(),
          Text(
            "This website is created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff9E9E9E)),
          ),
          SizedBox(height: 10),
          Text(
            "Copyright 2021 HLS",
            style: TextStyle(fontSize: 16, color: Color(0xff646464)),
          )
        ],
      ),
    );
  }
}
