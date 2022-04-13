import 'package:flutter/material.dart';
import 'package:portfolio_website/models/skill_type_model.dart';
import 'package:portfolio_website/models/skills_model.dart';

import 'skill_button.dart';

class SkillGrid extends StatelessWidget {
  final String title;
  final int indice;
  const SkillGrid({Key? key, required this.title, required this.indice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 14,
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            childAspectRatio: 4,
          ),
          itemCount: skillTypes[indice].skills.length,
          itemBuilder: (context, index) {
            return SkillButton(
                img: skillTypes[indice].skills[index].image,
                skill: skillTypes[indice].skills[index].skill);
          },
        )
      ],
    );
  }
}
