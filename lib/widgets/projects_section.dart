import 'package:flutter/material.dart';
import 'package:portfolio_website/models/projects_list.dart';

import '../mini_widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 4, vertical: 72),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 96,
          mainAxisSpacing: 64,
          childAspectRatio: 0.75,
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(
              title: projects[index].title,
              image: projects[index].image,
              indice: index);
        },
      ),
    );
  }
}
