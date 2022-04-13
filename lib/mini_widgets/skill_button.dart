import 'package:flutter/material.dart';

class SkillButton extends StatelessWidget {
  final AssetImage img;
  final String skill;
  const SkillButton({Key? key, required this.img, required this.skill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: img),
            const SizedBox(
              width: 12,
            ),
            Text(skill),
          ],
        ));
  }
}
