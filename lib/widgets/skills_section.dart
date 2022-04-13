import 'package:flutter/material.dart';
import 'package:portfolio_website/models/skills_model.dart';

import '../mini_widgets/skill_grid.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 6,
        vertical: 48,
      ),
      height: 510,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 48,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 84,
                childAspectRatio: 2,
              ),
              itemCount: skillTypes.length,
              itemBuilder: (context, index) {
                return SkillGrid(
                  title: skillTypes[index].title,
                  indice: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
