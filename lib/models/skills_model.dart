import 'package:flutter/material.dart';

import 'skill_type_model.dart';

List<SkillType> skillTypes = [
  SkillType(
    title: 'Languages',
    skills: [
      Skills(
        skill: 'Dart',
        image: const AssetImage('assets/images/dart.png'),
      ),
      Skills(
        skill: 'Python',
        image: const AssetImage('assets/images/python.png'),
      ),
    ],
  ),
  SkillType(
    title: 'Front-End',
    skills: [
      Skills(
        skill: 'Flutter',
        image: const AssetImage('assets/images/flutter.png'),
      ),
    ],
  ),
  SkillType(
    title: 'Back-End',
    skills: [
      Skills(
        skill: 'Firebase',
        image: const AssetImage('assets/images/firebase.png'),
      ),
      Skills(
        skill: 'MongoDB',
        image: const AssetImage('assets/images/mongodb.png'),
      ),
      Skills(
        skill: 'PostgreSQL',
        image: const AssetImage('assets/images/postgres.png'),
      ),
    ],
  ),
  SkillType(
    title: 'Software',
    skills: [
      Skills(
        skill: 'Photoshop',
        image: const AssetImage('assets/images/photoshop.png'),
      ),
      Skills(
        skill: 'Figma',
        image: const AssetImage('assets/images/figma.png'),
      ),
      Skills(
        skill: 'Rive',
        image: const AssetImage('assets/images/rive.png'),
      ),
    ],
  ),
  SkillType(
    title: 'Tools',
    skills: [
      Skills(
        skill: 'Git',
        image: const AssetImage('assets/images/git.png'),
      ),
      Skills(
        skill: 'Github',
        image: const AssetImage('assets/images/github.png'),
      ),
    ],
  ),
];
