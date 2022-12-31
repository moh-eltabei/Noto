import 'package:flutter/material.dart';
import 'package:noto/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressed});
  final String title;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const Spacer(),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: kWhitColore.withOpacity(.08),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: IconButton(
              icon: Icon(
                icon,
                size: 32,
              ),
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
