import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset("assets/images/h_logo.png", height: 45, width: 45),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text("Handcrafted by", style: TextStyle(color: Colors.grey)),
              Text("Ngọc Tiến"),
            ],
          ),
          const SizedBox(width: 10),
          ClipOval(
            child: Image.asset(
              "assets/images/avatar.jpg",
              height: 45,
              width: 45,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
